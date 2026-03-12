# General Social Survey Survey 2006 Three Wave Panel Data

A tibble containing the General Social Survey 2006 Three Wave Panel Data
File, in long format.

## Usage

``` r
data(gss_panel06_long)
```

## Format

A tibble with 6,000 rows and 1,572 columns. Variables are encoded as
numerics or factors. The GSS Codebook is the authoritative source for
the variables in this dataset. It is available at
<http://gss.norc.org/Get-Documentation>. Summary information is
available in `gss_panel_doc`, a tibble supplied with this package.
Respondent ids are contained in the variable `firstid` (from the GSS
`id\_1` variable). Survey waves (years 2006, 2008, 2010) are contained
in the `wave` variable as 1, 2, and 3. See also the `gss_panel_doc`
object in this package.

## Source

National Opinion Research Center, <http://gss.norc.org>.
