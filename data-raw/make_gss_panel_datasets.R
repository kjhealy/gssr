# Ingest the panel datasets

library(tidyverse)
library(haven)
library(tools)
library(forcats)
library(labelled)
library(panelr)


# install_github("jacob-long/panelr")
# library(panelr)

gss_panel20 <- haven::read_stata(here::here("data-raw", "objects", "gss2020panel_r1a.dta"))

## Save out
usethis::use_data(gss_panel20, overwrite = TRUE, compress = "xz")
