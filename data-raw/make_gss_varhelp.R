## Make help pages
## Run make_gss_doc.R and make_gss_dict.R first

## Procedure:
## So as not to choke devtools::document(), first remove all .Rd files from man/,
## then remove all gss_vars_*.R from R/. Then run devtools::document() as usual.
## This will regenerate the "regular" package documentation and vignettes etc.
## Once done, run this file, which will use future and furrr to generate the ~6,500
## or so Rd files the variables.

library(tidyverse)
library(here)
library(haven)
library(furrr)
library(future.apply)

## Cleaning errant characters that make things crash!
fix_pct <- function(x){
  x |>
    stringr::str_replace_all("%", "pct") |>
    stringr::str_replace_all("<", "(") |>
    stringr::str_replace_all(">", ")")

}


availableCores()
n_cores <- availableCores() - 1



load(here("data", "gss_dict.rda"))


prettify_yrtab <- function(x) {
  # We don't need yr crosstabs for year or id
  if(!is_tibble(x)) {
    return("Not applicable")
  }
  o <- x |>
    mutate(year = haven::as_factor(year)) |>
    janitor::adorn_totals(where = c("row", "col"))
   # janitor::adorn_title(col_name = col_name)
  o <- o |> mutate(across(where(is.numeric), as.character))
  o[is.na(o)] <- "-"
  o
}


make_rd_skel <- function(variable, label, var_text) {
  paste(c(
    paste("#' ", stringr::str_to_sentence(label)),
    paste("#' "),
    paste("#' ", variable),
    paste("#' "),
    paste("#' Question", var_text),
    paste("#' ")
  ), collapse = "\n")
}


make_rd_describe <- function(value_labels) {
  ## can't split on `;` along because of some labels with ; in them
  ## and several weird questions with strange codes addressed by these fixes
  o <- stringr::str_squish(stringr::str_split_1(value_labels, "; \\["))
  o <- str_replace(o, "^(\\d{1,9}\\])", "[\\1") # digits
  o <- str_replace(o, "^(NA\\([a-z]\\)\\])", "[\\1")
  o <- str_replace(o, "^(\\d{1}e\\+05)", "[\\1")
  o <- str_squish(str_replace(o, "\\[(.*?)\\](.*)", "`\\1` \\2"))
  items <- paste0(c("#'   * "), o, collapse = "\n")
  o <- paste0(
    "\n#' \n#' @section Values: \n#' \n",
    items,
    "\n#'"
  )
  o
}


make_rd_yrfreq <- function(var_yrtab) {
  if(!is_tibble(var_yrtab)) {
    return("\n#'")
  }

  options(knitr.kable.NA = '-')

  headstring <- paste0(
    c("\n#' @section Overview: \n#' For further details see the [official GSS documentation](https://gss.norc.org/get-documentation).",
      "#'",
      "#' Counts by year: \n#'\n"), collapse = "\n")
  o <- var_yrtab |>
    prettify_yrtab() |>
    knitr::kable()
  paste0(headstring,
             paste("#' ", o, collapse = "\n"))
}

make_rd_varname <- function(variable){
  keywords <- paste0("#' @keywords variable\n")
  mdflag <- paste0("#' @md\n")
  vname <- paste0("#' @name ", rlang::as_name(variable),"\nNULL\n")
  #n <- paste0("#' @name ", rlang::as_name(variable),"\n")
  #e <- paste0('"', rlang::as_name(variable), '"\n')
  paste0(keywords,mdflag,vname, collapse = "\n")
}

#endstring <- "\n#'\n#' @source General Social Survey https://gss.norc.org\n#' @author Kieran Healy\n#' @export \n"
endstring <- "\n#'\n#' @source General Social Survey https://gss.norc.org\n#' \n"


## lol furrr is magic
plan(multisession, workers = n_cores)
docstring <- gss_dict |>
  mutate(rd1 = future_pmap_chr(list(variable, label, var_text), make_rd_skel),
         rd2 = future_map_chr(value_labels, make_rd_describe),
         rd3 = future_map_chr(var_yrtab, make_rd_yrfreq),
         rd4 = future_map_chr(variable, make_rd_varname),
         rd5 = future_pmap_chr(list(rd1, rd3, rd2, endstring, rd4, collapse="\n"), paste0)) |>
  pull(rd5) |>
  fix_pct() ## rd fixes

## Chunk it into a list we can walk
## We pick a small ceiling number here (so, more files)
## the better to let future_ do its work, esp with the Rd rendering
docs_list <- split(docstring, ceiling(seq_along(docstring)/10))
docs_list <- set_names(docs_list, paste0("gss_vars_", sprintf("%02i", seq_along(docs_list)), ".R"))

## save the files
purrr::iwalk(docs_list, \(x, fname) write_lines(x, here::here("R", fname)))


## Generate the rd files outside of roxygenize, because there are just too
## many of them.
gen_rds <- function(r_file)
{
  blocks  <- lapply(roxygen2:::tokenize_file(r_file),
                    roxygen2:::block_set_env, env = .GlobalEnv)
  blocks  <- roxygen2:::order_blocks(blocks)
  roclet  <- roxygen2:::roclet("rd")
  rd_list   <- suppressWarnings(roxygen2:::roclet_process(roclet, blocks))
  purrr::iwalk(rd_list, \(x, fname) write_lines(x$format(), here::here("man", fname)))
}

# furrr continues magic
plan(multisession, workers = n_cores)
gss_varfiles <- fs::dir_ls(here::here("R"), glob = "*.R")
furrr::future_walk(gss_varfiles, gen_rds)

