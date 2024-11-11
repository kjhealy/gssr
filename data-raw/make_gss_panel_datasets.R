# Ingest the panel datasets

library(tidyverse)
library(haven)
library(tools)
library(forcats)
library(labelled)
library(panelr)


# install_github("jacob-long/panelr")
# library(panelr)

gss_panel20 <- haven::read_stata(here::here("data-raw", "norc", "gss2020panel_r1a.dta")) |>
  mutate(yearid = as.character(yearid),
         year_1a = as.integer(year_1a),
         year_1b = as.integer(year_1b),
         year_2 = as.integer(year_2))

## Save out
usethis::use_data(gss_panel20, overwrite = TRUE, compress = "xz")

## 06 Panel
panel06_wide <- haven::read_stata(here::here("data-raw", "norc", "GSS_panel06w123_R6a-stata.dta"))

vars_wt_06 <- c("wtpan12", "wtpan123", "wtpannr12", "wtpannr123", "formwt", "oversamp")
vars_strat_06 <- c("vstrat", "vpsu")
vars_numeric_06 <- c(vars_wt_06, vars_strat_06)

gss_panel06_long <- panel06_wide |>
  janitor::clean_names() |>
  mutate(across(everything(), zap_missing),
         across(all_of(vars_numeric_06), as.numeric),
         across(!all_of(vars_numeric_06), as_factor)) |>
  mutate(firstid = as.character(id_1)) |>
  mutate(firstid = str_pad(firstid, 4, pad = "0")) |>
  relocate(firstid) |>
  mutate(across(!all_of(vars_numeric_06), \(x) fct_relabel(x, tolower))) |>
  mutate(across(!all_of(vars_numeric_06), \(x) fct_relabel(x, tools::toTitleCase))) |>
  long_panel(prefix = "_",
             begin = 1,
             end = 3,
             id = "firstid",
             label_location = "end",
             as_panel_data = FALSE,
             check.varying = FALSE) |>
  arrange(firstid)

## Save out
usethis::use_data(gss_panel06_long, overwrite = TRUE, compress = "xz")


## 08 Panel
panel08_wide <- haven::read_stata(here::here("data-raw", "norc", "GSS_panel08w123_R6-stata.dta"))

vars_wt_08 <- c("wtpan12", "wtpan123", "wtpannr12", "wtpannr123", "formwt")
vars_other_08 <- c("cshutyp06", "version", "oversamp")
vars_numeric_08 <- c(vars_wt_08, vars_other_08)

gss_panel08_long <- panel08_wide |>
  janitor::clean_names() |>
  mutate(across(everything(), zap_missing),
         across(all_of(vars_numeric_08), as.numeric),
         across(!all_of(vars_numeric_08), as_factor)) |>
  mutate(firstid = as.character(id_1)) |>
  mutate(firstid = str_pad(firstid, 4, pad = "0")) |>
  relocate(firstid) |>
  mutate(across(!all_of(vars_numeric_08), \(x) fct_relabel(x, tolower))) |>
  mutate(across(!all_of(vars_numeric_08), \(x) fct_relabel(x, tools::toTitleCase))) |>
  long_panel(prefix = "_",
             begin = 1,
             end = 3,
             id = "firstid",
             label_location = "end",
             as_panel_data = FALSE,
             check.varying = FALSE) |>
  arrange(firstid)

## Save out
usethis::use_data(gss_panel08_long, overwrite = TRUE, compress = "xz")


## 10 Panel
panel10_wide <- haven::read_stata(here::here("data-raw", "norc", "GSS_panel10w123_R6-stata.dta"))

vars_wt_10 <- c("wtpan12", "wtpan123", "wtpannr12", "wtpannr123", "formwt")
vars_strat_10 <- c("vstrat", "vpsu")
vars_other_10 <- c("oversamp")
vars_numeric_10 <- c(vars_wt_10, vars_strat_10, vars_other_10)

gss_panel10_long <- panel10_wide |>
  janitor::clean_names() |>
  mutate(across(everything(), zap_missing),
         across(all_of(vars_numeric_10), as.numeric),
         across(!all_of(vars_numeric_10), as_factor)) |>
  mutate(firstid = as.character(id_1)) |>
  mutate(firstid = str_pad(firstid, 4, pad = "0")) |>
  relocate(firstid) |>
  mutate(across(!all_of(vars_numeric_10), \(x) fct_relabel(x, tolower))) |>
  mutate(across(!all_of(vars_numeric_10), \(x) fct_relabel(x, tools::toTitleCase))) |>
  long_panel(prefix = "_",
             begin = 1,
             end = 3,
             id = "firstid",
             label_location = "end",
             as_panel_data = FALSE,
             check.varying = FALSE) |>
  arrange(firstid)

## Save out
usethis::use_data(gss_panel10_long, overwrite = TRUE, compress = "xz")

