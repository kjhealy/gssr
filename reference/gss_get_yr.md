# Download GSS data file for a single year from NORC

Use `gss_get_yr()` to get GSS data for a single year from NORC's GSS
website (where it is available as a zipped Stata file) and put it
directly into a tibble.

## Usage

``` r
gss_get_yr(
  year = 2024,
  url = "https://gss.norc.org/documents/stata/",
  fname = "_stata",
  ext = "zip",
  dest = "data-raw/",
  save_file = c("n", "y")
)
```

## Arguments

- year:

  The desired GSS survey year, as a number (i.e., not in quotes).
  Defaults to 2024.

- url:

  Location of the file. Defaults to the current NORC URL for Stata
  files.

- fname:

  Non-year filename component. Defaults to '\_stata'. Usually should not
  be changed.

- ext:

  File name extension. Defaults to 'zip'. Usually should not be changed.

- dest:

  If `save_file` is "y", the directory to put the file in. Defaults to
  `data-raw` in current directory.

- save_file:

  Save the data file as well as loading it as an object. Defaults to
  'n'.

## Value

A tibble with the requested year's GSS data.

## Examples

``` r
# \donttest{
gss80 <- gss_get_yr(1980)
#> Fetching: https://gss.norc.org/documents/stata/1980_stata.zip
# }
```
