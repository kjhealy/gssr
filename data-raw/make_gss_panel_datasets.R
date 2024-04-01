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
