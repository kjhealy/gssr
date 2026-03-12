## Dataset import

library(tidyverse)
library(haven)
library(socviz)
library(here)

## Read the Stata file
gss_all <- read_stata(here::here("data-raw", "norc", "gss7224_r3.dta"))

## Small version for vignettes
cont_vars <- c("year", "id", "ballot", "age")

cat_vars <- c(
  "race",
  "sex",
  "degree",
  "padeg",
  "madeg",
  "relig",
  "polviews",
  "fefam"
)

wt_vars <- c(
  "vpsu",
  "vstrat",
  "oversamp",
  "formwt", # weight to deal with experimental randomization
  "wtssall", # weight variable (1972-2018)
  "wtssps", # post-stratification weights (1972-2024)
  "sampcode", # sampling error code
  "sample"
) # sampling frame and method

sub_vars <- c(cont_vars, cat_vars, wt_vars)

gss_sub <- gss_all |>
  select(all_of(sub_vars))

gss_sub <- labelled::copy_labels(gss_all, gss_sub)

## Save out
usethis::use_data(gss_all, overwrite = TRUE, compress = "xz")
usethis::use_data(gss_sub, overwrite = TRUE, compress = "xz")
