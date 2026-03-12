# Example subset of the GSS Cumulative Data File 1972-2022

A tibble containing just a few variables from the GSS Cumulative Data
File. See http://gss.norc.org/Get-Documentation for full documentation
of the variables.

## Usage

``` r
data(gss_sub)
```

## Format

A tibble with 72,390 rows and 19 columns.

- `year`:

  Year of the survey.

- `id`:

  Respondent id.

- `ballot`:

  Survey ballot

- `age`:

  Age of respondent

- `race`:

  Race of respondent

- `sex`:

  Sex of respondent

- `degree`:

  Highest level of education obtained

- `padeg`:

  Father's education

- `padeg`:

  Mother's education

- `relig`:

  Religion (simple coding)

- `Polviews`:

  Political views

- `fefam`:

  Response to a statement that it is better for man to go out to work,
  and for a woman to tend the home

- `vpsu`:

  Variance primary sampling unit

- `vstrat`:

  Variance stratum

- `oversamp`:

  Weights for black oversamples

- `formwt`:

  Survey weight for experimental randomization

- `wtssall`:

  Survey weight (1972-2018)

- `wtssps`:

  Poststratification survey weight (1972-2022)

- `sampcode`:

  Sampling error code

- `sample`:

  Sampling frame and method

## Source

National Opinion Research Center, <http://gss.norc.org>.
