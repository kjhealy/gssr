#' General Social Survey Survey Cumulative Data File 1972-2018
#'
#' A tibble containing the General Social Survey Cumulative Data file.
#' Variables are encoded as labelled vectors. See \href{http://gss.norc.org/Get-Documentation}{http://gss.norc.org/Get-Documentation} for full
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


#' General Social Survey Survey 2006 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2006 Three Wave Panel Data
#' File, in long format. Variables are encoded as labelled vectors. See \href{http://gss.norc.org/Get-Documentation}{http://gss.norc.org/Get-Documentation} for full
#' documentation of the variables, and the `gss_doc` tibble contained in this package.
#'
#' @format An object of class \code{panel_data} (a tibble produced by
#'     the \code{panelr} package) with 6,000 rows and 1,572 columns.
#'     \describe{ The GSS Codebook is the authoritative source for the
#'     variables in this dataset. It is available at
#'     \url{http://gss.norc.org/Get-Documentation}. Summary
#'     information is available in `gss_panel_doc`, a tibble supplied
#'     with this package.  Respondent ids are
#'     contained in the variable \code{firstid} (from the GSS \code{id\_1}
#'     variable). Waves (years 2006, 2008, 2010) are contained in the
#'     \code{wave} variable as 1, 2, and 3.
#'     }
#'
#' @docType data
#' @usage data(gss_panel06_long)
#' @keywords datasets
#' @name gss_panel06_long
#' @format A panel_data tibble.
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel06_long'

#' General Social Survey Survey 2008 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2008 Three Wave Panel Data
#' File, in long format. Variables are encoded as labelled vectors. See \href{http://gss.norc.org/Get-Documentation}{http://gss.norc.org/Get-Documentation} for full
#' documentation of the variables, and the `gss_doc` tibble contained in this package.
#'
#' @format An object of class \code{panel_data} (a tibble produced by
#'     the \code{panelr} package) with 6,069 rows and 1,244 columns.
#'     \describe{ The GSS Codebook is the authoritative source for the
#'     variables in this dataset. It is available at
#'     \url{http://gss.norc.org/Get-Documentation}. Summary
#'     information is available in `gss_panel_doc`, a tibble supplied
#'     with this package.  Respondent ids are
#'     contained in the variable \code{firstid} (from the GSS \code{id\_1}
#'     variable). Survey waves (years 2008, 2010, 2012) are contained
#'     in the \code{wave} variable as 1, 2, and 3. }
#'
#' @docType data
#' @usage data(gss_panel08_long)
#' @keywords datasets
#' @name gss_panel08_long
#' @format A panel_data tibble.
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel08_long'


#' General Social Survey Survey 2010 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2010 Three Wave Panel Data
#' File, in long format. Variables are encoded as labelled vectors. See \href{http://gss.norc.org/Get-Documentation}{http://gss.norc.org/Get-Documentation} for full
#' documentation of the variables, and the `gss_doc` tibble contained in this package.
#'
#' @format An object of class \code{panel_data} (a tibble produced by
#'     the \code{panelr} package) with 6,132  rows and 1,200 columns.
#'     \describe{ The GSS Codebook is the authoritative source for the
#'     variables in this dataset. It is available at
#'     \url{http://gss.norc.org/Get-Documentation}. Summary
#'     information is available in `gss_panel_doc`, a tibble supplied
#'     with this package. Respondent ids are contained in the variable
#'     \code{firstid} (from the GSS \code{id\_1} variable). Survey
#'     waves (years 2010, 2012, 2014) are contained in the \code{wave} variable as 1, 2, and 3.}
#'
#' @docType data
#' @usage data(gss_panel10_long)
#' @keywords datasets
#' @name gss_panel10_long
#' @format A panel_data tibble.
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel10_long'



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


#' Codebook for the GSS Three Wave Panel
#'
#' A tibble containing information on the variable in the GSS
#' Three Wave Panel Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables. The panel codebook is with respect
#' to the data in wide format, so time-varying measures have a suffix
#' (an underscore followed by the number 1, 2, or 3) indicating which
#' wave of the panel they are from.
#'
#' @format A tibble with 1,855 rows and five columns.
#' \describe{
#' \item{\code{id}}{The short name of the variable, in the panel's
#'     wide-format naming convention. A character vector.}
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
#' @name gss_panel_doc
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel_doc'


#' GSS Cumulative Data File 1972-2018, Vignette Example
#'
#' A tibble containing just a few variables from the GSS
#' Cumulative Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with 64,814 rows and 14 columns.
#' \describe{
#' \item{\code{year}}{Year of the survey.}
#' \item{\code{id}}{Respondent id.}
#' \item{\code{ballot}}{Survey ballot}
#' \item{\code{age}}{Age of respondent}
#' \item{\code{race}}{Race of respondent}
#' \item{\code{sex}}{Sex of respondent}
#' \item{\code{fefam}}{Response to a statement that it is better for man to go out to work, and for a woman to tend the home}
#' \item{\code{vpsu}}{Variance primary sampling unit}
#' \item{\code{vstrat}}{Variance stratum}
#' \item{\code{oversamp}}{Weights for black oversamples}
#' \item{\code{formwt}}{Survey weight for experimental randomization}
#' \item{\code{wtssall}}{Survey weight}
#' \item{\code{sampcode}}{Sampling error code}
#' \item{\code{sample}}{Sampling frame and method}
#'}
#'
#' @docType data
#' @keywords datasets
#' @name gss_sub
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_sub'

