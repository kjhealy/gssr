<!-- README.md is generated from README.Rmd. Please edit that file -->



# gssr <img src="man/figures/gssr.png" align="right" width="120" />

<!-- badges: start -->
[![Build Status](https://travis-ci.org/kjhealy/gssr.svg?branch=master)](https://travis-ci.org/kjhealy/gssr) 

<!-- badges: end -->

A package wrapping the General Social Survey 1972-2019 cumulative data file for use in R. 

<img src="man/figures/fefam_svy.png" width = "95%"/>

## Installation

You can install the beta version of gssr from [GitHub](https://github.com/kjhealy/gssr) with:

``` r
devtools::install_github("kjhealy/gssr")
```

## Loading the data

The GSS cumulative data file is rather large, and so it is not loaded by default when you invoke the package. (That is, we don't use R's "lazy loading" facility.) To load the data, do the following:


```r
library(gssr)
#> Package loaded. To attach the GSS data, type data(gss_all) at the console. For the codebook, type data(gss_doc). The gss_all and gss_doc objects will then be available to use.
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
#>  1 caseid YEAR + Responde… <tibble [2 … <tibble [1… None                   
#>  2 year   GSS year for th… <tibble [2 … <tibble [3… None                   
#>  3 id     Respondent ID n… <tibble [2 … <tibble [1… None                   
#>  4 age    Age of responde… <tibble [3 … <tibble [1… 13. Respondent's age   
#>  5 sex    Respondents sex  <tibble [3 … <tibble [3… 23. Code respondent's …
#>  6 race   Race of respond… <tibble [3 … <tibble [4… 24. What race do you c…
#>  7 racec… What Is R's rac… <tibble [3 … <tibble [2… 1602. What is your rac…
#>  8 racec… What Is R's rac… <tibble [3 … <tibble [2… 1602. What is your rac…
#>  9 racec… What Is R's rac… <tibble [3 … <tibble [2… 1602. What is your rac…
#> 10 hispa… Hispanic specif… <tibble [3 … <tibble [3… 1601. IF R IS FEMALE, …
#> # … with 6,134 more rows
```

You can take a look at information on a particular variable by doing something like this:


```r

gss_doc %>% filter(id == "race") %>% 
  select(id, description, text)
#> # A tibble: 1 x 3
#>   id    description        text                                   
#>   <chr> <chr>              <chr>                                  
#> 1 race  Race of respondent 24. What race do you consider yourself?
```

To look at a variable's marginals or its properties, use `unnest()`:


```r

gss_doc %>% filter(id == "race") %>%
  select(marginals) %>% 
  unnest(cols = c(marginals))
#> # A tibble: 4 x 5
#>   percent n      value label id   
#>     <dbl> <chr>  <chr> <chr> <chr>
#> 1    80.3 52,033 1     WHITE RACE 
#> 2    14.2 9,187  2     BLACK RACE 
#> 3     5.5 3,594  3     OTHER RACE 
#> 4   100   64,814 <NA>  Total RACE
```



```r

gss_doc %>% filter(id == "race") %>%
    select(properties) %>%
    unnest(cols = c(properties))
#> # A tibble: 3 x 3
#>   property          value   id   
#>   <chr>             <chr>   <chr>
#> 1 Data type         numeric RACE 
#> 2 Missing-data code 0       RACE 
#> 3 Record/column     1/298   RACE
```

## Further details

Categorical variables are encoded as factors.

The package is documented at <http://kjhealy.github.io/gssr/>. The GSS homepage is at <http://gss.norc.org/>. While the `gssr` package incorporates the publicly-available GSS cumulative data file, the package is in not associated with or endorsed by the National Opinion Research Center or the General Social Survey. 
