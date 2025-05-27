#' General Social Survey Survey Cumulative Data File 1972-2024
#'
#' A tibble containing the General Social Survey Cumulative Data file.
#'
#' @format An object of class `tibble` with 75,699 rows and 6,867 columns. Variables are encoded as labelled vectors. The GSS Codebook is the authoritative source for the variables in this dataset. It is available at <http://gss.norc.org/Get-Documentation>. Summary information is available in `gss_doc`, a tibble supplied with this package.
#'
#' @docType data
#' @usage data(gss_all)
#' @keywords datasets
#' @name gss_all
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
'gss_all'


#' General Social Survey Survey 2006 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2006 Three Wave Panel Data
#' File, in long format.
#'
#' @format A tibble with 6,000 rows and 1,572 columns. Variables are encoded as labelled vectors. The GSS
#'     Codebook is the authoritative source for the variables in this
#'     dataset. It is available at
#'     <http://gss.norc.org/Get-Documentation>. Summary
#'     information is available in `gss_panel_doc`, a tibble
#'     supplied with this package. Respondent ids are contained in the
#'     variable `firstid` (from the GSS `id\_1` variable).
#'     Survey waves (years 2006, 2008, 2010) are contained in the
#'     `wave` variable as 1, 2, and 3. See also the `gss_panel_doc` object in this package.
#'
#' @docType data
#' @usage data(gss_panel06_long)
#' @keywords datasets
#' @name gss_panel06_long
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
'gss_panel06_long'

#' General Social Survey Survey 2008 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2008 Three Wave Panel Data
#' File, in long format.
#'
#' @format A tibble with 6,069 rows and 1,244 columns. Variables are encoded as labelled vectors. The GSS
#'     Codebook is the authoritative source for the variables in this
#'     dataset. It is available at
#'     <http://gss.norc.org/Get-Documentation>. Summary
#'     information is available in `gss_panel_doc`, a tibble
#'     supplied with this package. Respondent ids are contained in the
#'     variable `firstid` (from the GSS `id_1` variable).
#'     Survey waves (years 2008, 2010, 2012) are indicated by the
#'     `wave` variable as 1, 2, and 3. See also the `gss_panel_doc` object in this package.
#'
#' @docType data
#' @usage data(gss_panel08_long)
#' @keywords datasets
#' @name gss_panel08_long
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
'gss_panel08_long'


#' General Social Survey Survey 2010 Three Wave Panel Data
#'
#' A tibble containing the General Social Survey 2010 Three Wave Panel Data
#' File, in long format.
#'
#' @format A tibble with 6,132  rows and 1,200 columns. Variables are encoded as labelled vectors.
#'     The GSS Codebook is the authoritative source for the
#'     variables in this dataset. It is available at
#'     <http://gss.norc.org/Get-Documentation>. Summary
#'     information is available in `gss_panel_doc`, a tibble supplied
#'     with this package. Respondent ids are contained in the variable
#'     `firstid` (from the GSS `id_1` variable). Survey
#'     waves (years 2010, 2012, 2014) are indicated by the `wave` variable as 1, 2, and 3. See also the `gss_panel_doc` object in this package.
#'
#' @docType data
#' @usage data(gss_panel10_long)
#' @keywords datasets
#' @name gss_panel10_long
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
'gss_panel10_long'



#' Codebook for the GSS Cumulative Data File 1972-2018
#'
#' A tibble containing information on the variables in the GSS
#' Cumulative Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with `r fmt_nr(data(gss_doc))` rows and `r fmt_nc(data(gss_doc))` columns.
#' \describe{
#' \item{`id`}{The short name of the variable. A character vector.}
#' \item{`description`}{Brief description of the variable. A
#' character vector.}
#' \item{`properties`}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location.}
#' \item{`marginals`}{A list column containing a summary of the
#' values taken by the variable.}
#' \item{`text`}{Further more detailed information on the
#' question asked and the directions provided.}
#'}
#'
#' @docType data
#' @usage data(gss_doc)
#' @keywords datasets
#' @name gss_doc
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
'gss_doc'

#' Example subset of the GSS Cumulative Data File 1972-2018
#'
#' A tibble containing just a few variables from the GSS
#' Cumulative Data File. See http://gss.norc.org/Get-Documentation for full
#' documentation of the variables.
#'
#' @format A tibble with 72,390 rows and 19 columns.
#' \describe{
#' \item{`year`}{Year of the survey.}
#' \item{`id`}{Respondent id.}
#' \item{`ballot`}{Survey ballot}
#' \item{`age`}{Age of respondent}
#' \item{`race`}{Race of respondent}
#' \item{`sex`}{Sex of respondent}
#' \item{`degree`}{Highest level of education obtained}
#' \item{`padeg`}{Father's education}
#' \item{`padeg`}{Mother's education}
#' \item{`relig`}{Religion (simple coding)}
#' \item{`Polviews`}{Political views}
#' \item{`fefam`}{Response to a statement that it is better for man to go out to work, and for a woman to tend the home}
#' \item{`vpsu`}{Variance primary sampling unit}
#' \item{`vstrat`}{Variance stratum}
#' \item{`oversamp`}{Weights for black oversamples}
#' \item{`formwt`}{Survey weight for experimental randomization}
#' \item{`wtssall`}{Survey weight}
#' \item{`sampcode`}{Sampling error code}
#' \item{`sample`}{Sampling frame and method}
#'}
#'
#' @docType data
#' @usage data(gss_sub)
#' @keywords datasets
#' @name gss_sub
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
'gss_sub'
