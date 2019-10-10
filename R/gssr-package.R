#' @importFrom tibble tibble
NULL

#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`


#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL


##' Get marginal summaries for a GSS variable or variables
##'
##' Codebook summaries from the \code{gss_doc} object
##' @title Get marginal summaries for a GSS variable or variables
##' @param varnames The (categorical) variable or variables you want
##'     to see marginals for. Can be a character string or a character
##'     vector.
##' @param data The codebook data frame, by default \code{gss_doc}
##' @return A tibble of marginal distributions from the GSS codebook
##' @author Kieran Healy
##' @examples
##' data(gss_doc)
##' gss_get_marginals("race")
##'
##' gss_get_marginals(c("race", "gender", "fefam"))
##' @export
gss_get_marginals <- function(varnames = "id", data = gss_doc) {
  dplyr::filter(data, id %in% varnames) %>%
    dplyr::select(id, marginals) %>%
    dplyr::mutate_if(is.list, purrr::simplify_all) %>%
    tidyr::unnest_legacy() %>%
    dplyr::mutate(n = stringr::str_remove_all(n, ","),
           n = as.integer(n)) %>%
    dplyr::select(-tidyselect::one_of("id1"))
}

##' Property information for a GSS variable or variables
##'
##' Returns the properties of a GSS variable as given in the codebook,
##'     typically the Data Type, Missing Data Codes, and Record/Column
##'     location.
##' @title Property information for a GSS variable or variables
##' @param varnames The variable or variables you want
##'     to see properties for. Can be a character string or a character
##'     vector.
##' @param data The codebook data frame, by default \code{gss_doc}
##' @return A tibble of the properies for each variable
##' @author Kieran Healy
##' @examples
##' data(gss_doc)
##' gss_get_props("age")
##'
##' gss_get_props(c("age", "race", "fefam"))
##' @export
gss_get_props <- function(varnames = "id", data = gss_doc) {
  dplyr::filter(data, id %in% varnames) %>%
    dplyr::select(id, properties) %>%
    tidyr::unnest_legacy(properties) %>%
    dplyr::select(-tidyselect::one_of("id1"))
}
