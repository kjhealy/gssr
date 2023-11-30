## 1.

## Make the tibble of crosstabs

library(tidyverse)
library(haven)
library(tools)
library(forcats)
library(rvest)
library(socviz)
library(survey)
library(srvyr)
library(ggrepel)

## http://larmarange.github.io/labelled/
library(labelled)


# Load the local dataset; make sure it's up to date
load(here::here("data", "gss_all.rda"))


# Initial data scraping of codebook and saving to local storage
## Scraped the codebook from SDA
# Our `wget` command:
#
#   `wget -r --reject hcbkh01 -np -k -p https://sda.berkeley.edu/sdaweb/docs/gss22rel2/DOC/hcbkfx0.htm`
#
# This recursively gets the alphabetical variable list (rejecting the sequential one). Switches:
#
#   - r Recurse into links, retrieving those pages too (this has a default max depth of 5, can be set with -l).
# - --reject hcbkh01 Don't follow the link to the Sequential Variable List
# - np Never enter a parent directory.
# - k Convert links relative to local copy.
# - p Get page-requisites like stylesheets (this is an exception to the np rule).


# Parse the pages

# Using the local data we've saved, we read in a list of all the web pages.
# Our goal is to get them into a tractable format (a tibble or data frame).
# From there we can write some functions to, e.g., query the codebook directly
# from the console, or alterantively produce the codebook in a format suitable
# for integrating into the R help system via a package.

## The names of all the files we just created
local_urls <- fs::dir_ls(here::here("codebook-raw", "raw"))

## Read all the pages
doc_pages <- map(local_urls, \(x) rvest::read_html(x))

## quick look at first five items in the list
summary(doc_pages)[1:5,]

## Quick look inside the first record
doc_pages[[1]]

# Next, we parse every webpage.

## Cleaning
clean_string <- function(x){
  x |>
    str_replace_all("\\n", " ") |>
    str_replace_all("\\r", "") |>
    str_replace_all("’", "'") |>
    str_trim() |>
    str_squish()
}

## Page of variables to list of variables and their info,
parse_varpage <- function(x){
  html_elements(x, ".vardesc")
}

get_varname <- function(x){
  o <- html_elements(x, ".varname") |>
    html_text() |>
    clean_string()
  ifelse(length(o) == 0, "None", o)
}

get_varlabel <- function(x){
  o <- html_elements(x, ".varlabel")|>
    html_text() |>
    clean_string()
  ifelse(length(o) == 0, "None", o)
}

get_vartext <- function(x){
  o <- html_elements(x, "pre") |>
    html_text() |>
    unlist() |>
    clean_string()
  ifelse(length(o) == 0, "None", o)
}

get_varprops <- function(x){
  # This is a table but we're going to treat it like a string
  o <- x |>
    html_elements(".noborder")|>
    html_text() |>
    clean_string() |>
    str_remove("^Properties") |>
    str_squish()
  ifelse(length(o) == 0, "None", o)
}


process_page <- function(x){
  page <- parse_varpage(x)
  pg_vars <- map_chr(page, get_varname)
  pg_varlabels <- map_chr(page, get_varlabel)
  pg_vartext <- map_chr(page, get_vartext)
  pg_varprops <- map_chr(page, get_varprops)
  o <- pmap_dfr(list(var_name = pg_vars, var_label = pg_varlabels,
                     var_text = pg_vartext, var_props = pg_varprops), list)
  names(o) <- c("var_name", "var_label", "var_text", "var_props")
  o
}

## Get a yearly crosstab of a variable
make_var_yrtab <- function(x) {
  # We don't need yr crosstabs for year or id
  if(rlang::as_name(x) %in% c("year", "id")) {
    return("None")
  }

  # Variables with very knarly structure, and weight vars
  no_xtab <- c("occ",
    "occ10_next",
    "occonet",
    "coocc10",
    "sbocc80",
    "sampcode",
    "kish",
    "maocc80",
    "size",
    "indus07",
    "sbocc10",
    "datefrst",
    "paocc80",
    "maocc10",
    "spocc80",
    "conrinc",
    "realrinc",
    "occ80",
    "hivtest1",
    "realinc",
    "coninc",
    "wtssps_nea",
    "paocc10",
    "spocc10",
    "occ10",
    "lngthinv",
    "vstrat",
    "wtssnr",
    "wtss",
    "wtssnr",
    "wtssall",
    "wtssps",
    "wtssnrps",
    "wtssps_nea",
    "wtssnrps_nea",
    "wtssps_next",
    "wtssnrps_next",
    "ballotformwt",
    "ballotformwtnr",
    "vp",
    "hhtype",
    "isco08",
    "coisco08",
    "spisco08",
    "maisco08",
    "paisco08",
    "intyrs",
    "sdastrata",
    "sdaclusters",
    "formwt",
    "oversamp",
    "compwt",
    "sampcode",
    "sample",
    "phase",
    "vpsu")

  if(rlang::as_name(x) %in% no_xtab) {
    return("None")
  }


  gss_all |>
    select(year, {{x}}) |>
    count(year, {{x}}) |>
    mutate({{x}} := as_factor({{x}}),
           {{x}} := as.character({{x}}),
           {{x}} := str_replace_all({{x}}, "’", "'")) |>
    pivot_wider(names_from = {{x}},
                values_from = n)
}



# Parse the GSS variables into a tibble, with list columns for the
# marginals and the variable properties.
gss_doc_raw <-  doc_pages |>
  map(process_page) |>
  bind_rows() |>
  separate_wider_delim(var_props, delim = "Missing-data codes: ",
                       names = c("var_type", "var_na_codes"),
                       too_few = "align_start") |>
  mutate(var_type = str_remove(var_type, "Data type: "),
         var_type = str_squish(var_type))

## Remove sda specific vars not in the GSS proper
sda_vnames <- gss_doc_raw$var_name
length(sda_vnames)
length(unique(sda_vnames))
sda_vnames[duplicated(sda_vnames)]

# There are some duplicates from the scraping/import
gss_doc_raw |>
  janitor::get_dupes()

gss_vnames <- colnames(gss_all)
length(gss_vnames)
length(unique(gss_vnames))
length(sda_vnames) - length(gss_vnames)
all(gss_vnames %in% sda_vnames)

# There are also three vars created by SDA
setdiff(sda_vnames, gss_vnames)

## Clean: drop the dupes and the sda vars
## then assemble the tables
gss_doc <- gss_doc_raw |>
  group_by(var_name) |>
  slice_head() |>
  ungroup() |>
  filter(var_name %nin% setdiff(sda_vnames, gss_vnames)) |>
  # We need sym() because the function takes a bare col name
  mutate(var_yrtab = map(var_name, \(v) make_var_yrtab(sym(v))))


gss_doc <- gss_doc |>
  rename(variable = var_name) |>
  rename(var_doc_label = var_label)

save(gss_doc, file = here::here("data-raw", "gss_doc.rda"), compress = "xz")

## Save out
usethis::use_data(gss_doc, overwrite = TRUE, compress = "xz")

