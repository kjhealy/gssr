library(tidyverse)
library(lubridate)
library(here)
library(janitor)
library(socviz)
library(labelled)

## Check for data/ dir in data-raw
ifelse(!dir.exists(here("data-raw/data")),
       dir.create(file.path("data-raw/data")),
       FALSE)

library(gssr)

# sample gss data
data("gss_all")
gss_all

# make a data dictionary
gss_dict <- gss_all %>%
  select(where(is.labelled)) %>%
  lookfor() %>%
  convert_list_columns_to_character()

labn <- gss_all %>%
  select(where(is.labelled)) %>%
  colnames()

labn[1]
labn[length(labn)]

out <- gss_which_years(gss_all, all_of(labn))
out <- out %>%
  rowid_to_column()

gss_years <- out %>%
  pivot_longer(wrkstat:hivtestloc,
               names_to = "variable",
               values_to = "present") %>%
  select(-rowid) %>%
  group_by(variable) %>%
  nest(years = c(year, present))

gss_dict <- gss_dict %>%
  left_join(gss_years) %>%
  select(-levels)

usethis::use_data(gss_dict, overwrite = TRUE, compress = "xz")

