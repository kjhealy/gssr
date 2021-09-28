
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gssr <img src="man/figures/gssr.png" align="right" width="120" />

<!-- badges: start -->

[![R build
status](https://github.com/kjhealy/gssr/workflows/R-CMD-check/badge.svg)](https://github.com/kjhealy/gssr/actions)

<!-- badges: end -->

The General Social Survey Cumulative Data (1972-2018) and Three Wave
Panel Data files packaged for easy use in R.

<img src="man/figures/fefam_svy.png" width = "95%"/>

## Installation

`gssr` is a data package, bundling several datasets into a convenient
format. The relatively large size of the data in the package means it is
not suitable for hosting on [CRAN](https://cran.r-project.org/), the
core R package repository. There are two ways to install it.

### Install direct from GitHub

You can install the beta version of gssr from
[GitHub](https://github.com/kjhealy/gssr) with:

``` r
remotes::install_github("kjhealy/gssr")
```

### Installation using `drat`

While using `install_github()` works just fine, it would be nicer to be
able to just type `install.packages("gssr")` or
`update.packages("gssr")` in the ordinary way. We can do this using Dirk
Eddelbuettel’s
[drat](http://eddelbuettel.github.io/drat/DratForPackageUsers.html)
package. Drat provides a convenient way to make R aware of package
repositories other than CRAN.

First, install `drat`:

``` r
if (!require("drat")) {
    install.packages("drat")
    library("drat")
}
```

Then use `drat` to tell R about the repository where `gssr` is hosted:

``` r
drat::addRepo("kjhealy")
```

You can now install `gssr`:

``` r
install.packages("gssr")
```

To ensure that the `gssr` repository is always available, you can add
the following line to your `.Rprofile` or `.Rprofile.site` file:

``` r
drat::addRepo("kjhealy")
```

With that in place you’ll be able to do `install.packages("gssr")` or
`update.packages("gssr")` and have everything work as you’d expect.

Note that the drat repository only contains data packages that are not
on CRAN, so you will never be in danger of grabbing the wrong version of
any other package.

## Loading the data

### The Cumulative Data File

The GSS cumulative data file is large. It is not loaded by default when
you invoke the package. (That is, `gssr` does not use R’s “lazy loading”
facility. The data file is too big to do this without error.) To load
one of the datasets, first load the library and then use `data()` to
make the data available. For example, load the cumulative GSS file like
this:

``` r
library(gssr)
#> Package loaded. To attach the GSS data, type data(gss_all) at the console.
#> For the codebook, type data(gss_doc).
#> For the panel data and documentation, type e.g. data(gss_panel08_long) and data(gss_panel_doc).
data(gss_all)
```

This will take a moment. Once it is ready, the `gss_all` object is
available to use in the usual way:

``` r
gss_all
#> # A tibble: 64,814 × 6,108
#>     year    id    wrkstat   hrs1   hrs2   evwork   occ prestige   wrkslf wrkgovt
#>    <dbl> <dbl>  <dbl+lbl> <dbl+> <dbl+> <dbl+lb> <dbl> <dbl+lb> <dbl+lb> <dbl+l>
#>  1  1972     1 1 [WORKIN…     NA     NA NA         205       50 2 [SOME…      NA
#>  2  1972     2 5 [RETIRE…     NA     NA  1 [YES]   441       45 2 [SOME…      NA
#>  3  1972     3 2 [WORKIN…     NA     NA NA         270       44 2 [SOME…      NA
#>  4  1972     4 1 [WORKIN…     NA     NA NA           1       57 2 [SOME…      NA
#>  5  1972     5 7 [KEEPIN…     NA     NA  1 [YES]   385       40 2 [SOME…      NA
#>  6  1972     6 1 [WORKIN…     NA     NA NA         281       49 2 [SOME…      NA
#>  7  1972     7 1 [WORKIN…     NA     NA NA         522       41 2 [SOME…      NA
#>  8  1972     8 1 [WORKIN…     NA     NA NA         314       36 2 [SOME…      NA
#>  9  1972     9 2 [WORKIN…     NA     NA NA         912       26 2 [SOME…      NA
#> 10  1972    10 1 [WORKIN…     NA     NA NA         984       18 2 [SOME…      NA
#> # … with 64,804 more rows, and 6,098 more variables: commute <dbl+lbl>,
#> #   industry <dbl+lbl>, occ80 <dbl+lbl>, prestg80 <dbl+lbl>, indus80 <dbl+lbl>,
#> #   indus07 <dbl+lbl>, occonet <dbl+lbl>, found <dbl+lbl>, occ10 <dbl+lbl>,
#> #   occindv <dbl+lbl>, occstatus <dbl+lbl>, occtag <dbl+lbl>,
#> #   prestg10 <dbl+lbl>, prestg105plus <dbl+lbl>, indus10 <dbl+lbl>,
#> #   indstatus <dbl+lbl>, indtag <dbl+lbl>, marital <dbl+lbl>,
#> #   martype <dbl+lbl>, agewed <dbl+lbl>, divorce <dbl+lbl>, …
```

To load the tibble that contains information on the variables in the
data, do this:

``` r
data(gss_doc)
gss_doc
#> # A tibble: 6,144 × 5
#>    id       description                  properties       marginals  text       
#>    <chr>    <chr>                        <list>           <list>     <chr>      
#>  1 caseid   YEAR + Respondent ID         <tibble [2 × 3]> <tibble [… None       
#>  2 year     GSS year for this respondent <tibble [2 × 3]> <tibble [… None       
#>  3 id       Respondent ID number         <tibble [2 × 3]> <tibble [… None       
#>  4 age      Age of respondent            <tibble [3 × 3]> <tibble [… 13. Respon…
#>  5 sex      Respondents sex              <tibble [3 × 3]> <tibble [… 23. Code r…
#>  6 race     Race of respondent           <tibble [3 × 3]> <tibble [… 24. What r…
#>  7 racecen1 What Is R's race 1st mention <tibble [3 × 3]> <tibble [… 1602. What…
#>  8 racecen2 What Is R's race 2nd mention <tibble [3 × 3]> <tibble [… 1602. What…
#>  9 racecen3 What Is R's race 3rd mention <tibble [3 × 3]> <tibble [… 1602. What…
#> 10 hispanic Hispanic specified           <tibble [3 × 3]> <tibble [… 1601. IF R…
#> # … with 6,134 more rows
```

You can take a look at information on a particular variable by doing
something like this:

``` r
gss_doc %>% filter(id == "race") %>% 
  select(id, description, text)
#> # A tibble: 1 × 3
#>   id    description        text                                   
#>   <chr> <chr>              <chr>                                  
#> 1 race  Race of respondent 24. What race do you consider yourself?
```

To look at a variable’s marginals or its properties, use `unnest()`:

``` r
gss_doc %>% filter(id == "race") %>%
  select(marginals) %>% 
  unnest(cols = c(marginals))
#> # A tibble: 4 × 5
#>   percent n      value label id   
#>     <dbl> <chr>  <chr> <chr> <chr>
#> 1    80.3 52,033 1     WHITE RACE 
#> 2    14.2 9,187  2     BLACK RACE 
#> 3     5.5 3,594  3     OTHER RACE 
#> 4   100   64,814 <NA>  Total RACE
```

``` r
gss_doc %>% filter(id == "race") %>%
    select(properties) %>%
    unnest(cols = c(properties))
#> # A tibble: 3 × 3
#>   property          value   id   
#>   <chr>             <chr>   <chr>
#> 1 Data type         numeric RACE 
#> 2 Missing-data code 0       RACE 
#> 3 Record/column     1/298   RACE
```

There are convenience functions to do this as well, for one or more
categorical variables. One for the marginals:

``` r
gss_get_marginals(varnames = c("race", "sex"))
#> # A tibble: 7 × 6
#>   variable percent     n value label  id   
#>   <chr>      <dbl> <int> <chr> <chr>  <chr>
#> 1 sex         44.1 28614 1     MALE   SEX  
#> 2 sex         55.9 36200 2     FEMALE SEX  
#> 3 sex        100   64814 <NA>  Total  SEX  
#> 4 race        80.3 52033 1     WHITE  RACE 
#> 5 race        14.2  9187 2     BLACK  RACE 
#> 6 race         5.5  3594 3     OTHER  RACE 
#> 7 race       100   64814 <NA>  Total  RACE
```

And one for the properties:

``` r
gss_get_props(varnames = c("race", "sex"))
#> # A tibble: 6 × 4
#>   variable property          value   id   
#>   <chr>    <chr>             <chr>   <chr>
#> 1 sex      Data type         numeric SEX  
#> 2 sex      Missing-data code 0       SEX  
#> 3 sex      Record/column     1/297   SEX  
#> 4 race     Data type         numeric RACE 
#> 5 race     Missing-data code 0       RACE 
#> 6 race     Record/column     1/298   RACE
```

## Which questions were asked in which years?

We often want to know which years a question or group of questions was
asked. We can find this out for one or more variables with
`gss_which_years()`.

``` r
gss_which_years(gss_all, fefam)

#> # A tibble: 32 x 2
#>     year fefam
#>    <dbl> <lgl>
#>  1  1972 FALSE
#>  2  1973 FALSE
#>  3  1974 FALSE
#>  4  1975 FALSE
#>  5  1976 FALSE
#>  6  1977 TRUE 
#>  7  1978 FALSE
#>  8  1980 FALSE
#>  9  1982 FALSE
#> 10  1983 FALSE
#> # … with 22 more rows
  
```

When querying more than one variable, use `c()`:

``` r
gss_all %>%
  gss_which_years(c(industry, indus80, wrkgovt, commute)) %>%
  print(n = Inf)

#> # A tibble: 32 x 5
#>     year industry indus80 wrkgovt commute
#>    <dbl> <lgl>    <lgl>   <lgl>   <lgl>  
#>  1  1972 TRUE     FALSE   FALSE   FALSE  
#>  2  1973 TRUE     FALSE   FALSE   FALSE  
#>  3  1974 TRUE     FALSE   FALSE   FALSE  
#>  4  1975 TRUE     FALSE   FALSE   FALSE  
#>  5  1976 TRUE     FALSE   FALSE   FALSE  
#>  6  1977 TRUE     FALSE   FALSE   FALSE  
#>  7  1978 TRUE     FALSE   FALSE   FALSE  
#>  8  1980 TRUE     FALSE   FALSE   FALSE  
#>  9  1982 TRUE     FALSE   FALSE   FALSE  
#> 10  1983 TRUE     FALSE   FALSE   FALSE  
#> 11  1984 TRUE     FALSE   FALSE   FALSE  
#> 12  1985 TRUE     FALSE   TRUE    FALSE  
#> 13  1986 TRUE     FALSE   TRUE    TRUE   
#> 14  1987 TRUE     FALSE   FALSE   FALSE  
#> 15  1988 TRUE     TRUE    FALSE   FALSE  
#> 16  1989 TRUE     TRUE    FALSE   FALSE  
#> 17  1990 TRUE     TRUE    FALSE   FALSE  
#> 18  1991 FALSE    TRUE    FALSE   FALSE  
#> 19  1993 FALSE    TRUE    FALSE   FALSE  
#> 20  1994 FALSE    TRUE    FALSE   FALSE  
#> 21  1996 FALSE    TRUE    FALSE   FALSE  
#> 22  1998 FALSE    TRUE    FALSE   FALSE  
#> 23  2000 FALSE    TRUE    TRUE    FALSE  
#> 24  2002 FALSE    TRUE    TRUE    FALSE  
#> 25  2004 FALSE    TRUE    TRUE    FALSE  
#> 26  2006 FALSE    TRUE    TRUE    FALSE  
#> 27  2008 FALSE    TRUE    TRUE    FALSE  
#> 28  2010 FALSE    TRUE    TRUE    FALSE  
#> 29  2012 FALSE    FALSE   TRUE    FALSE  
#> 30  2014 FALSE    FALSE   TRUE    FALSE  
#> 31  2016 FALSE    FALSE   TRUE    FALSE  
#> 32  2018 FALSE    FALSE   TRUE    FALSE  
```

## Panel data

In addition to the Cumulative Data File, the gssr package also includes
the GSS’s panel data. The current rotating panel design began in 2006. A
panel of respondents were interviewed that year and followed up on for
further interviews in 2008 and 2010. A second panel was interviewed
beginning in 2008, and was followed up on for further interviews in 2010
and 2012. And a third panel began in 2010, with follow-up interviews in
2012 and 2014. The `gssr` package provides three datasets, one for each
of three-wave panels. They are `gss_panel06_long`, `gss_panel08_long`,
and `gss_panel10_long`. The datasets are provided by the GSS in wide
format but (as their names suggest) they are packaged here in long
format. The conversion was carried out using the [`panelr`
package](https://panelr.jacob-long.com) and its `long_panel()` function.
Conversion from long back to wide format is possible with the tools
provided in `panelr`.

The panel data objects must be loaded in the same way as the cumulative
data file.

``` r
data("gss_panel06_long")

gss_panel06_long
#> # A tibble: 6,000 × 1,572
#>    firstid  wave       ballot    form formwt oversamp sampcode  sample   samptype
#>    <fct>   <dbl>    <dbl+lbl> <dbl+l>  <dbl>    <dbl> <dbl+lb> <dbl+l>  <dbl+lbl>
#>  1 9           1 3 [BALLOT C] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#>  2 9           2 3 [BALLOT C] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#>  3 9           3 3 [BALLOT C] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#>  4 10          1 1 [BALLOT A] 1 [STA…      1        1      501 9 [200… 2006 [200…
#>  5 10          2 1 [BALLOT A] 1 [STA…      1        1      501 9 [200… 2006 [200…
#>  6 10          3 1 [BALLOT A] 1 [STA…      1        1      501 9 [200… 2006 [200…
#>  7 11          1 3 [BALLOT C] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#>  8 11          2 3 [BALLOT C] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#>  9 11          3 3 [BALLOT C] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#> 10 12          1 1 [BALLOT A] 2 [ALT…      1        1      501 9 [200… 2006 [200…
#> # … with 5,990 more rows, and 1,563 more variables: vstrat <dbl+lbl>,
#> #   vpsu <dbl+lbl>, wtpan12 <dbl+lbl>, wtpan123 <dbl+lbl>, wtpannr12 <dbl+lbl>,
#> #   wtpannr123 <dbl+lbl>, letin1a <dbl+lbl>, abany <dbl+lbl>,
#> #   abdefect <dbl+lbl>, abhlth <dbl+lbl>, abnomore <dbl+lbl>, abpoor <dbl+lbl>,
#> #   abrape <dbl+lbl>, absingle <dbl+lbl>, accntsci <dbl+lbl>,
#> #   acqasian <dbl+lbl>, acqattnd <dbl+lbl>, acqblack <dbl+lbl>,
#> #   acqbrnda <dbl+lbl>, acqchild <dbl+lbl>, acqcohab <dbl+lbl>, …
```

Although the panel data objects were created by `panelr`, they are
regular tibbles. You do not need to use `panelr` to work with the data.

The column names in long format do not have wave identifiers. Rather,
`firstid` and `wave` variables track the cases. The `firstid` variable
is unique for every respondent in the panel and has no missing values.
The `wave` variable indexes responses from a given `firstid` panelist in
each wave (if observed). The `id` variable is from the GSS and indexes
individuals within waves.

``` r
data("gss_panel08_long")

gss_panel08_long %>% 
  select(firstid, wave, id, sex)
#> # A tibble: 6,069 × 4
#>    firstid  wave        id       sex
#>    <fct>   <dbl> <dbl+lbl> <dbl+lbl>
#>  1 1           1         1  1 [MALE]
#>  2 1           2      8001  1 [MALE]
#>  3 1           3        NA NA       
#>  4 2           1         2  1 [MALE]
#>  5 2           2      8002  1 [MALE]
#>  6 2           3      8001  1 [MALE]
#>  7 3           1         3  1 [MALE]
#>  8 3           2      8003  1 [MALE]
#>  9 3           3      8002  1 [MALE]
#> 10 4           1         4  1 [MALE]
#> # … with 6,059 more rows
```

We can look at attrition across waves with, e.g.:

``` r
gss_panel06_long %>% 
  select(wave, id) %>%
  group_by(wave) %>%
  summarize(observed = n_distinct(id),
            missing = sum(is.na(id)))
#> # A tibble: 3 × 3
#>    wave observed missing
#>   <dbl>    <int>   <int>
#> 1     1     2000       0
#> 2     2     1537     464
#> 3     3     1277     724
```

The documentation tibble for the panel data is called `gss_panel_doc`.

``` r
data("gss_panel_doc")

gss_panel_doc
#> # A tibble: 628 × 9
#>    id       description text  properties_1 properties_2 properties_3 marginals_1
#>    <chr>    <chr>       <chr> <list>       <list>       <list>       <list>     
#>  1 caseid   CASEID      None  <tibble [2 … <NULL>       <NULL>       <tibble [1…
#>  2 year     YEAR        None  <tibble [3 … <tibble [3 … <tibble [3 … <tibble [2…
#>  3 id       ID          None  <tibble [3 … <tibble [3 … <tibble [3 … <tibble [1…
#>  4 age      AGE         13. … <tibble [3 … <tibble [3 … <tibble [3 … <tibble [1…
#>  5 sex      SEX         23. … <tibble [3 … <tibble [3 … <tibble [3 … <tibble [3…
#>  6 race     RACE        24. … <tibble [3 … <tibble [3 … <tibble [3 … <tibble [4…
#>  7 racecen1 RACECEN1    1602… <tibble [3 … <tibble [3 … <tibble [3 … <tibble [1…
#>  8 racecen2 RACECEN2    1602… <tibble [3 … <tibble [3 … <tibble [3 … <tibble [2…
#>  9 racecen3 RACECEN3    1602… <tibble [3 … <tibble [3 … <tibble [3 … <tibble [1…
#> 10 hispanic HISPANIC    1601… <tibble [3 … <tibble [3 … <tibble [3 … <tibble [3…
#> # … with 618 more rows, and 2 more variables: marginals_2 <list>,
#> #   marginals_3 <list>
```

Each row is a variable. The `id`, `description`, and `text` columns
provide the details on each question or measure. The `properties` and
`marginals` are provided in the remaining columns, with a suffix
indicating the wave. The categorical variables in the panel codebook can
be queried in the same way as those in the cumulative codebook. We
specify that we want to look at `gss_panel_docw` rather than `gss_doc`
and we say which property wave or marginals wave we want to see.

``` r
gss_get_marginals(varnames = c("sex", "race"), data = gss_panel_doc, margin = marginals_2)
#> # A tibble: 9 × 6
#>   variable percent     n value label            id    
#>   <chr>      <dbl> <int> <chr> <chr>            <chr> 
#> 1 sex         41.7   640 "1"   MALE             SEX_2 
#> 2 sex         58.3   896 "2"   FEMALE           SEX_2 
#> 3 sex         NA     464 "."   (Does not apply) SEX_2 
#> 4 sex        100    2000 ""    Total            SEX_2 
#> 5 race        78.6  1208 "1"   WHITE            RACE_2
#> 6 race        13.7   210 "2"   BLACK            RACE_2
#> 7 race         7.7   118 "3"   OTHER            RACE_2
#> 8 race        NA     464 "0"   IAP              RACE_2
#> 9 race       100    2000  <NA> Total            RACE_2
gss_get_marginals(varnames = "padeg", data = gss_panel_doc, margin = marginals_1)
#> # A tibble: 9 × 6
#>   variable percent     n value label          id     
#>   <chr>      <dbl> <int> <chr> <chr>          <chr>  
#> 1 padeg       38.3   602 0     LT HIGH SCHOOL PADEG_1
#> 2 padeg       40.4   635 1     HIGH SCHOOL    PADEG_1
#> 3 padeg        2.7    43 2     JUNIOR COLLEGE PADEG_1
#> 4 padeg       10.6   167 3     BACHELOR       PADEG_1
#> 5 padeg        7.9   124 4     GRADUATE       PADEG_1
#> 6 padeg       NA     355 7     IAP            PADEG_1
#> 7 padeg       NA      60 8     DK             PADEG_1
#> 8 padeg       NA      14 9     <NA>           PADEG_1
#> 9 padeg      100    2000 <NA>  Total          PADEG_1
```

## Further details

The package is documented at <http://kjhealy.github.io/gssr/>. The GSS
homepage is at <http://gss.norc.org/>. While the `gssr` package
incorporates the publicly-available GSS cumulative data file, the
package is not associated with or endorsed by the National Opinion
Research Center or the General Social Survey.
