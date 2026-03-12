# gss_which_years

See which years a particular question was asked in the GSS.

## Usage

``` r
gss_which_years(data, variable, year = year)
```

## Arguments

- data:

  A tibble of data, usually `gss_all`

- variable:

  The variable or variables we want to check. Provide variables in
  tidyselect style, i.e. unquoted, and for multiple variables enclose
  unquoted in c()

- year:

  The grouping variable; defaults to and should always be `year`

## Value

A tibble showing whether the question or questions were asked in each of
the GSS years

## Details

What years was a particular question asked in the GSS?

## Examples

``` r
if (FALSE) { # \dontrun{
data(gss_all)
gss_all %>%
  gss_which_years(fefam)

gss_all %>%
  gss_which_years(c(industry, indus80, wrkgovt, commute))
} # }
```
