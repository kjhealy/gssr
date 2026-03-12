# General Social Survey Survey 2010 Three Wave Panel Data

A tibble containing the General Social Survey 2010 Three Wave Panel Data
File, in long format.

## Usage

``` r
data(gss_panel10_long)
```

## Format

A tibble with 6,132 rows and 1,191 columns. Variables are encoded as as
numerics or factors. The GSS Codebook is the authoritative source for
the variables in this dataset. It is available at
<http://gss.norc.org/Get-Documentation>. Summary information is
available in `gss_panel_doc`, a tibble supplied with this package.
Respondent ids are contained in the variable `firstid` (from the GSS
`id_1` variable). Survey waves (years 2010, 2012, 2014) are indicated by
the `wave` variable as 1, 2, and 3. See also the `gss_panel_doc` object
in this package.

## Source

National Opinion Research Center, <http://gss.norc.org>.
