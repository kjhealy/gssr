## 2.
## Run make_gss_doc.R first.

library(tidyverse)
library(lubridate)
library(here)
library(janitor)
library(socviz)
library(labelled)

## gss data
load(here::here("data", "gss_all.rda"))


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


## Next we join gss_doc, created in make_gss_doc.R
load(file = here::here("data", "gss_doc.rda"))

gss_dict <- left_join(gss_dict, gss_doc, by = "variable") |>
  relocate(var_type, .after = col_type) |>
  relocate(var_doc_label, .before = value_labels) |>
  relocate(years, .before = var_yrtab) |>
  relocate(col_type:var_type, .after = var_yrtab) |>
  relocate(var_na_codes, .after = var_type)

## Save out
usethis::use_data(gss_dict, overwrite = TRUE, compress = "xz")

