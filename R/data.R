#' General Social Survey Survey Cumulative Data File 1972-2021
#'
#' A tibble containing the General Social Survey Cumulative Data file.
#'
#' @format An object of class \code{tibble} with 68,846 rows and 6,311 columns. Variables are encoded as labelled vectors. The GSS Codebook is the authoritative source for the variables in this dataset. It is available at \url{http://gss.norc.org/Get-Documentation}. Summary information is available in `gss_doc`, a tibble supplied with this package.
#'
#' @docType data
#' @usage data(gss_all)
#' @keywords datasets
#' @name gss_all
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_all'


#' General Social Survey Survey 2006 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2006 Three Wave Panel Data
#' File, in long format.
#'
#' @format A tibble with 6,000 rows and 1,572 columns. Variables are encoded as labelled vectors. The GSS
#'     Codebook is the authoritative source for the variables in this
#'     dataset. It is available at
#'     \url{http://gss.norc.org/Get-Documentation}. Summary
#'     information is available in \code{gss_panel_doc}, a tibble
#'     supplied with this package. Respondent ids are contained in the
#'     variable \code{firstid} (from the GSS \code{id\_1} variable).
#'     Survey waves (years 2006, 2008, 2010) are contained in the
#'     \code{wave} variable as 1, 2, and 3. See also the `gss_panel_doc` object in this package.
#'
#' @docType data
#' @usage data(gss_panel06_long)
#' @keywords datasets
#' @name gss_panel06_long
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel06_long'

#' General Social Survey Survey 2008 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2008 Three Wave Panel Data
#' File, in long format.
#'
#' @format A tibble with 6,069 rows and 1,244 columns. Variables are encoded as labelled vectors. The GSS
#'     Codebook is the authoritative source for the variables in this
#'     dataset. It is available at
#'     \url{http://gss.norc.org/Get-Documentation}. Summary
#'     information is available in \code{gss_panel_doc}, a tibble
#'     supplied with this package. Respondent ids are contained in the
#'     variable \code{firstid} (from the GSS \code{id_1} variable).
#'     Survey waves (years 2008, 2010, 2012) are indicated by the
#'     \code{wave} variable as 1, 2, and 3. See also the `gss_panel_doc` object in this package.
#'
#' @docType data
#' @usage data(gss_panel08_long)
#' @keywords datasets
#' @name gss_panel08_long
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel08_long'


#' General Social Survey Survey 2010 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2010 Three Wave Panel Data
#' File, in long format.
#'
#' @format A tibble with 6,132  rows and 1,200 columns. Variables are encoded as labelled vectors.
#'     The GSS Codebook is the authoritative source for the
#'     variables in this dataset. It is available at
#'     \url{http://gss.norc.org/Get-Documentation}. Summary
#'     information is available in \code{gss_panel_doc}, a tibble supplied
#'     with this package. Respondent ids are contained in the variable
#'     \code{firstid} (from the GSS \code{id_1} variable). Survey
#'     waves (years 2010, 2012, 2014) are indicated by the \code{wave} variable as 1, 2, and 3. See also the `gss_panel_doc` object in this package.
#'
#' @docType data
#' @usage data(gss_panel10_long)
#' @keywords datasets
#' @name gss_panel10_long
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel10_long'



#' Codebook for the GSS Cumulative Data File 1972-2018
#'
#' A tibble containing information on the variables in the GSS
#' Cumulative Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with `r fmt_nr(data(gss_doc))` rows and `r fmt_nc(data(gss_doc))` columns.
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
#' @usage data(gss_doc)
#' @keywords datasets
#' @name gss_doc
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_doc'


#' Data Dictionary for the GSS Cumulative Data File 1972-2018
#'
#' A tibble containing information on the variables in the GSS
#' Cumulative Data File. This is a more compact version of the `gss_doc` codebook.
#' See http://gss.norc.org/Get-Documentation for full documentation of the variables.
#'
#' @format A tibble with `r fmt_nr(data(gss_dict))` rows and `r fmt_nc(data(gss_dict))` columns.
#' \describe{
#' \item{\code{pos}}{Column-index position of the variable in `gss_all`. (Integer.)}
#' \item{\code{variable}}{The name of the variable. (Character.)}
#' \item{\code{label}}{The variable's label. 'r' means 'Respondent'. (Character.)}
#' \item{\code{col_type}}{The column type of the variable in `gss_all`. (Character.)}
#' \item{\code{value_labels}}{The value labels and associated numeric values for the variable. Numeric values are given in square brackets. (Character.)}
#' \item{\code{years}}{Which years the question was asked. This information is stored as a tibble in a list column. The tibble contains a column for the `year` and a TRUE/FALSE coumn for `present`.}
#'}
#'
#' @docType data
#' @usage data(gss_dict)
#' @keywords datasets
#' @name gss_dict
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_dict'




#' Codebook for the GSS Three Wave Panel
#'
#' A tibble containing information on the variable in the GSS
#' Three Wave Panel Data File, in wide format. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with 628 rows and nine columns.
#' \describe{
#' \item{\code{id}}{The short name of the variable, without its wave identifier. A character vector.}
#' \item{\code{description}}{Brief description of the variable. A
#' character vector.}
#' \item{\code{text}}{Further more detailed information on the
#' question asked and the directions provided.}
#' \item{\code{properties_1}}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location for Wave 1 of the panel.}
#' \item{\code{properties_2}}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location for Wave 2 of the panel.}
#' \item{\code{properties_3}}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location for Wave 3 of the panel.}
#' \item{\code{marginals_1}}{A list column containing a summary of the
#' values taken by the variable in Wave 1 of the panel.}
#' \item{\code{marginals_2}}{A list column containing a summary of the
#' values taken by the variable in Wave 2 of the panel.}
#' \item{\code{marginals_3}}{A list column containing a summary of the
#' values taken by the variable in Wave 3 of the panel.}
#'}
#'
#' @docType data
#' @usage data(gss_panel_doc)
#' @keywords datasets
#' @name gss_panel_doc
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_panel_doc'


#' Example subset of the GSS Cumulative Data File 1972-2018
#'
#' A tibble containing just a few variables from the GSS
#' Cumulative Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with 68,846 rows and 14 columns.
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
#' @usage data(gss_sub)
#' @keywords datasets
#' @name gss_sub
#' @source National Opinion Research Center, \href{http://gss.norc.org}{http://gss.norc.org}.
'gss_sub'

