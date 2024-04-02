#' General Social Survey Survey Cumulative Data File 1972-2022 R2a
#'
#' A tibble containing Release 2a of the GSS Cumulative Data (1972-2022) file.
#'
#' @format An object of class `tibble` with 72,390 rows and 6,694 columns. Variables are encoded as labelled vectors. The GSS Codebook is the authoritative source for the variables in this dataset. It is available at <http://gss.norc.org/Get-Documentation>. Summary information is available in `gss_doc`, a tibble supplied with this package.
#'
#' @docType data
#' @usage data(gss_all)
#' @keywords datasets
#' @name gss_all
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
NULL


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
NULL

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
NULL


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
NULL


#' General Social Survey Survey 2020 Panel Data
#'
#' A tibble containing the General Social Survey 2020 Panel Data
#' File, in wide format.
#'
#' @format A tibble with 5,215  rows and 4,296 columns. Variables are encoded as labelled vectors.
#'     The GSS Codebook is the authoritative source for the
#'     variables in this dataset. It is available at
#'     <http://gss.norc.org/Get-Documentation>. Due to the COVID-19 pandemic,
#'     in 2020 the conducted the GSS was conducted as two studies: (1) a panel re-interview of past
#'     respondents from the 2016 and 2018 cross sectional GSS studies (referred to as the 2016-2020
#'     GSS Panel), and (2) an independent fresh cross-sectional address-based sampling push to web
#'     study (referred to as 2020 cross-sectional survey). This data object is for the first study;
#'     namely, the study empaneling former 2016 and 2018 GSS respondents to answer a GSS
#'     questionnaire in 2020 (i.e., the 2016-2020 GSS panel).
#'
#'     This data focuses on Wave 2 of the 2016-2020 GSS Panel – i.e. the panel reinterviews with 2018 GSS
#'     respondents and a randomly selected subset of 2016 GSS respondents. The GSS has used a panel format
#'     previously, as parts of the 2006-2014 GSS. In the 2016-2020 GSS Panel, variables only
#'     contain data from one of the three years. To differentiate between versions of each variable,
#'     they have been appended with suffixes. Variables from 2016 (Wave 1a) have _1a
#'     appended, variables from 2018 (Wave 1b) have _1b appended, and variables from 2020 (Wave 2) have _2
#'     appended. Users can also track cases from 2016 and 2018, and reinterviews from 2020 with the variable
#'     `samptype`.
#'
#'     Because of its relatively complex nature, users are strongly encouraged to consult the
#'     official [GSS documentation for this dataset](https://gss.norc.org/Documents/codebook/2016-2020%20GSS%20Panel%20Codebook%20-%20R1a.pdf).
#'
#' @docType data
#' @usage data(gss_panel20)
#' @keywords datasets
#' @name gss_panel20
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
NULL



#' Codebook for the GSS Cumulative Data File 1972-2022
#'
#' A tibble containing information on the variables in the GSS Cumulative Data File.
#'
#' @format A tibble.
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
NULL


#' Data Dictionary for the GSS Cumulative Data File 1972-2022
#'
#' A tibble containing information on the variables in the GSS Cumulative Data File.
#' @format A tibble.
#'
#' \describe{
#' \item{`pos`}{Column-index position of the variable in `gss_all`. (Integer.)}
#' \item{`variable`}{The name of the variable. (Character.)}
#' \item{`label`}{The variable's label. 'r' means 'Respondent'. (Character.)}
#' \item{`missing`}{Number of missing observations. (Integer.)}
#' \item{`var_doc_label`}{The variable's label, per the Berkeley SDA web pages. Should correspond directly to `label`. (Character)}
#' \item{`value_labels`}{The value labels and associated numeric values for the variable. Numeric values are given in square brackets. (Character.)}
#' \item{`var_text`}{The text of the question asked of the respondent. (Character.)}
#' \item{`years`}{Which years the question was asked. This information is stored as a tibble in a list column. The tibble contains a column for the `year` and a TRUE/FALSE coumn for `present`. (List.)}
#' \item{`var_yrtab`}{Crosstab of responses by year. Stored in a list-column. The tibbles contain `year` values in the rows and value labels across their columns, with response freqencies in the cells as counts. (List.)}
#' \item{`col_type`}{The column type of the variable in `gss_all`. (Character.)}
#' \item{`var_type`}{The variable type of the variable in `gss_all`. (Character.)}
#' \item{`var_na_codes`}{The missing value codes associated with the variable in `gss_all`. (Character.)}
#'}
#'
#' @docType data
#' @usage data(gss_dict)
#' @keywords datasets
#' @name gss_dict
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
NULL




#' Codebook for the GSS Three Wave Panel
#'
#' A tibble containing information on the variable in the GSS Three Wave Panel Data File, in wide format.
#'
#' @format A tibble with 628 rows and nine columns.
#' \describe{
#' \item{`id`}{The short name of the variable, without its wave identifier. A character vector.}
#' \item{`description`}{Brief description of the variable. A
#' character vector.}
#' \item{`text`}{Further more detailed information on the
#' question asked and the directions provided.}
#' \item{`properties_1`}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location for Wave 1 of the panel.}
#' \item{`properties_2`}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location for Wave 2 of the panel.}
#' \item{`properties_3`}{A list column containing information on
#' the variable's data type, its missing value codes, and its
#' record/column location for Wave 3 of the panel.}
#' \item{`marginals_1`}{A list column containing a summary of the
#' values taken by the variable in Wave 1 of the panel.}
#' \item{`marginals_2`}{A list column containing a summary of the
#' values taken by the variable in Wave 2 of the panel.}
#' \item{`marginals_3`}{A list column containing a summary of the
#' values taken by the variable in Wave 3 of the panel.}
#'}
#'
#' @docType data
#' @usage data(gss_panel_doc)
#' @keywords datasets
#' @name gss_panel_doc
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
NULL


#' Example subset of the GSS Cumulative Data File 1972-2022
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
#' \item{`wtssall`}{Survey weight (1972-2018)}
#' \item{`wtssps`}{Poststratification survey weight (1972-2022)}
#' \item{`sampcode`}{Sampling error code}
#' \item{`sample`}{Sampling frame and method}
#'}
#'
#' @docType data
#' @usage data(gss_sub)
#' @keywords datasets
#' @name gss_sub
#' @source National Opinion Research Center, [http://gss.norc.org](http://gss.norc.org).
NULL
