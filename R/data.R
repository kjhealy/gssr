#' General Social Survey Survey Cumulative Data File 1972-2018
#'
#' A tibble containing the General Social Survey Cumulative Data file. Categorical variables are encoded as factors. See \href{http://gss.norc.org/Get-Documentation}{http://gss.norc.org/Get-Documentation} for full
#' documentation of the variables, and the `gss_doc` tibble contained in this package.
#'
#' @format An object of class \code{tibble} with 64,814 rows and 6,108 columns.
#' \describe{
#' The GSS Codebook is the authoritative source for the variables in
#this dataset. It is available at
#\url{http://gss.norc.org/Get-Documentation}. Summary information is
#available in `gss_doc`, a tibble supplied with this package.
#' }
#'
#' @docType data
#' @usage data(gss_all)
#' @keywords datasets
#' @name gss_all
#' @format A tibble.
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_all'



#' Codebook for the GSS Cumulative Data File 1972-2018
#'
#' A tibble containing information on the variable in the GSS
#' Cumulative Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with 6,114 rows and five columns.
#' \describe{
#' \item{\code{id}}{The short name of the variable. A character vector.}
#' \item{\code{description}}{Brief description of the variable. A
#' character vector.}
#' \item{\code{properties}}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location.}
#' \item{\code{marginals}}{A list column containing a summary of the
#' values taken by the variable.}
#' \item{\code{text}}{Further more detailed information on the
#' question asked and the directions provided.}
#'}
#'
#' @docType data
#' @keywords datasets
#' @name gss_doc
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_doc'