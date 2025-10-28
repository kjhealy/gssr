## Dataset import

library(tidyverse)
library(haven)
library(socviz)
library(here)

# tmp <- read_stata(here("data-raw", "norc", "gss7222_r2.dta"))

## Current labeling problem: this is a GSS issue
# attr(tmp$violwhts, "label")
# attr(tmp$violwhts, "labels")
#
# attr(tmp$violblks, "label")
# attr(tmp$violblks, "labels")
#
# attr(tmp$violjews, "label")
# attr(tmp$violjews, "labels")
#
#
# attr(tmp$wlthwhts, "label")
# attr(tmp$wlthwhts, "labels")
#
# attr(tmp$wlthjews, "label")
# attr(tmp$wlthjews, "labels")
#
# attr(tmp$patrwhts, "label")
# attr(tmp$patrwhts, "labels")
#
# attr(tmp$influwht, "label")
# attr(tmp$influwht, "labels")
#
# attr(tmp$influblk, "label")
# attr(tmp$influblk, "labels")
#
#
#
# match("wlthwhts",colnames(tmp))
#
# attr(tmp$socdif4, "label")
# attr(tmp$socdif4, "labels")
#
#
# tmp[,1258:1268]
#
# attr(tmp$wlthwhts, "label")
# attr(tmp$wlthwhts, "labels")

## Read the Stata file
gss_all <- read_stata(here::here("data-raw", "norc", "gss7224_r2.dta"))

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
