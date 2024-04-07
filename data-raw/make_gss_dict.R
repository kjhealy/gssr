## 2.
## Run make_gss_doc.R and make_gss_all_labelled.R first

library(tidyverse)
library(lubridate)
library(here)
library(janitor)
library(socviz)
library(labelled)

## gss data
load(here::here("data", "gss_all.rda"))

## Labelled gss obj ()
load(here("data-raw", "objects", "gss_all_labelled.rda"))


# make a data dictionary
gss_dict <- gss_all |>
  select(where(is.labelled)) |>
  lookfor() |>
  convert_list_columns_to_character()

labn <- gss_all |>
  select(where(is.labelled)) |>
  colnames()

out <- gssr::gss_which_years(gss_all, all_of(labn))
out <- out |>
  rowid_to_column()

gss_years <- out |>
  pivot_longer(wrkstat:last_col(),
               names_to = "variable",
               values_to = "present") |>
  select(-rowid) |>
  group_by(variable) |>
  nest(years = c(year, present))

gss_dict <- gss_dict |>
  left_join(gss_years) |>
  select(-levels)

## Add ballot table
gss_which_ballots <- function(variable) {
  gss_all_labelled |>
    select(year, ballot, {{variable}}) |>
    filter({{variable}} != "iap") |>
    group_by(year, ballot) |>
    tally() |>
    pivot_wider(names_from = ballot, values_from = n) |>
    mutate(across(starts_with("ballot"), \(x) replace_na(as.character(x), "-")))
}

gss_ballot_tbl <- tibble(
  variable = gss_dict$variable
)

gss_ballot_tbl <- gss_ballot_tbl |>
  mutate(var_ballots = map(variable, gss_which_ballots)) |>
  mutate(var_ballots = map(var_ballots, as_tibble))


gss_dict <- gss_dict |>
  left_join(gss_ballot_tbl, by = "variable")

## Next we join gss_doc, created in make_gss_doc.R
load(file = here::here("data", "gss_doc.rda"))

gss_dict <- left_join(gss_dict, gss_doc, by = "variable") |>
  relocate(var_type, .after = col_type) |>
  relocate(var_doc_label, .before = value_labels) |>
  relocate(years, .before = var_yrtab) |>
  relocate(col_type:var_type, .after = var_yrtab) |>
  relocate(var_na_codes, .after = var_type) |>
  relocate(var_ballots, .after = var_yrtab)

## Save out
usethis::use_data(gss_dict, overwrite = TRUE, compress = "xz")

