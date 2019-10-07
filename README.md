<!-- README.md is generated from README.Rmd. Please edit that file -->



# gssr

<!-- badges: start -->
<!-- badges: end -->

An package wrapping the General Social Survey 1972-2019 cumulative data file for use in R.

## Installation

You can install the beta version of gssr from [GitHub](https://github.com/kjhealy/gssr) with:

``` r
devtools::install_github("kjhealy/gssr")
```

## Loading the data

The GSS cumulative data file is rather large, and so it is not loaded by default when you invoke the package. (That is, we don't use R's "lazy loading" facilty.) To load the data, do the following:


```r
library(gssr)
data(gss_all)
```


```r

gss_all
#> # A tibble: 64,814 x 6,108
#>     year    id wrkstat hrs1  hrs2  evwork occ   prestige wrkslf wrkgovt
#>    <dbl> <dbl> <fct>   <fct> <fct> <fct>  <fct> <fct>    <fct>  <fct>  
#>  1  1972     1 Workin… <NA>  <NA>  <NA>   205   50       Someo… <NA>   
#>  2  1972     2 Retired <NA>  <NA>  Yes    441   45       Someo… <NA>   
#>  3  1972     3 Workin… <NA>  <NA>  <NA>   270   44       Someo… <NA>   
#>  4  1972     4 Workin… <NA>  <NA>  <NA>   1     57       Someo… <NA>   
#>  5  1972     5 Keepin… <NA>  <NA>  Yes    385   40       Someo… <NA>   
#>  6  1972     6 Workin… <NA>  <NA>  <NA>   281   49       Someo… <NA>   
#>  7  1972     7 Workin… <NA>  <NA>  <NA>   522   41       Someo… <NA>   
#>  8  1972     8 Workin… <NA>  <NA>  <NA>   314   36       Someo… <NA>   
#>  9  1972     9 Workin… <NA>  <NA>  <NA>   912   26       Someo… <NA>   
#> 10  1972    10 Workin… <NA>  <NA>  <NA>   984   18       Someo… <NA>   
#> # … with 64,804 more rows, and 6,098 more variables: commute <fct>,
#> #   industry <fct>, occ80 <fct>, prestg80 <fct>, indus80 <fct>,
#> #   indus07 <fct>, occonet <fct>, found <fct>, occ10 <fct>, occindv <fct>,
#> #   occstatus <fct>, occtag <fct>, prestg10 <fct>, prestg105plus <fct>,
#> #   indus10 <fct>, indstatus <fct>, indtag <fct>, marital <fct>,
#> #   martype <fct>, agewed <fct>, divorce <fct>, widowed <fct>,
#> #   spwrksta <fct>, sphrs1 <fct>, sphrs2 <fct>, spevwork <fct>,
#> #   cowrksta <fct>, cowrkslf <fct>, coevwork <fct>, cohrs1 <fct>,
#> #   cohrs2 <fct>, spocc <fct>, sppres <fct>, spwrkslf <fct>, spind <fct>,
#> #   spocc80 <fct>, sppres80 <fct>, spind80 <fct>, spocc10 <fct>,
#> #   spoccindv <fct>, spoccstatus <fct>, spocctag <fct>, sppres10 <fct>,
#> #   sppres105plus <fct>, spind10 <fct>, spindstatus <fct>, spindtag <fct>,
#> #   coocc10 <fct>, coind10 <fct>, paocc16 <fct>, papres16 <fct>,
#> #   pawrkslf <fct>, paind16 <fct>, paocc80 <fct>, papres80 <fct>,
#> #   paind80 <fct>, paocc10 <fct>, paoccindv <fct>, paoccstatus <fct>,
#> #   paocctag <fct>, papres10 <fct>, papres105plus <fct>, paind10 <fct>,
#> #   paindstatus <fct>, paindtag <fct>, maocc80 <fct>, mapres80 <fct>,
#> #   mawrkslf <fct>, maind80 <fct>, maocc10 <fct>, maoccindv <fct>,
#> #   maoccstatus <fct>, maocctag <fct>, mapres10 <fct>,
#> #   mapres105plus <fct>, maind10 <fct>, maindstatus <fct>, maindtag <fct>,
#> #   sibs <fct>, childs <fct>, age <fct>, agekdbrn <fct>, educ <fct>,
#> #   paeduc <fct>, maeduc <fct>, speduc <fct>, coeduc <fct>, codeg <fct>,
#> #   degree <fct>, padeg <fct>, madeg <fct>, spdeg <fct>, major1 <fct>,
#> #   major2 <fct>, dipged <fct>, spdipged <fct>, codipged <fct>,
#> #   cosector <fct>, whenhs <fct>, whencol <fct>, …
```

To load the tibble that contains information on the variables in the data, do this:


```r
data(gss_doc)

gss_doc
#> # A tibble: 6,144 x 5
#>    id     description      properties   marginals   text                   
#>    <chr>  <chr>            <list>       <list>      <chr>                  
#>  1 CASEID YEAR + Responde… <tibble [2 … <tibble [1… None                   
#>  2 YEAR   GSS year for th… <tibble [2 … <tibble [3… None                   
#>  3 ID     Respondent ID n… <tibble [2 … <tibble [1… None                   
#>  4 AGE    Age of responde… <tibble [3 … <tibble [1… 13. Respondent's age   
#>  5 SEX    Respondents sex  <tibble [3 … <tibble [3… 23. Code respondent's …
#>  6 RACE   Race of respond… <tibble [3 … <tibble [4… 24. What race do you c…
#>  7 RACEC… What Is R's rac… <tibble [3 … <tibble [2… 1602. What is your rac…
#>  8 RACEC… What Is R's rac… <tibble [3 … <tibble [2… 1602. What is your rac…
#>  9 RACEC… What Is R's rac… <tibble [3 … <tibble [2… 1602. What is your rac…
#> 10 HISPA… Hispanic specif… <tibble [3 … <tibble [3… 1601. IF R IS FEMALE, …
#> # … with 6,134 more rows
```

