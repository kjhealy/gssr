---
output: github_document
---

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
#>     year    id wrkstat  hrs1  hrs2   evwork   occ prestige  wrkslf wrkgovt
#>    <dbl> <dbl> <dbl+l> <dbl> <dbl> <dbl+lb> <dbl> <dbl+lb> <dbl+l> <dbl+l>
#>  1  1972     1 1 [WOR…    NA    NA NA         205       50 2 [SOM…      NA
#>  2  1972     2 5 [RET…    NA    NA  1 [YES]   441       45 2 [SOM…      NA
#>  3  1972     3 2 [WOR…    NA    NA NA         270       44 2 [SOM…      NA
#>  4  1972     4 1 [WOR…    NA    NA NA           1       57 2 [SOM…      NA
#>  5  1972     5 7 [KEE…    NA    NA  1 [YES]   385       40 2 [SOM…      NA
#>  6  1972     6 1 [WOR…    NA    NA NA         281       49 2 [SOM…      NA
#>  7  1972     7 1 [WOR…    NA    NA NA         522       41 2 [SOM…      NA
#>  8  1972     8 1 [WOR…    NA    NA NA         314       36 2 [SOM…      NA
#>  9  1972     9 2 [WOR…    NA    NA NA         912       26 2 [SOM…      NA
#> 10  1972    10 1 [WOR…    NA    NA NA         984       18 2 [SOM…      NA
#> # … with 64,804 more rows, and 6,098 more variables: commute <dbl+lbl>,
#> #   industry <dbl+lbl>, occ80 <dbl+lbl>, prestg80 <dbl+lbl>,
#> #   indus80 <dbl+lbl>, indus07 <dbl+lbl>, occonet <dbl+lbl>,
#> #   found <dbl+lbl>, occ10 <dbl+lbl>, occindv <dbl+lbl>,
#> #   occstatus <dbl+lbl>, occtag <dbl+lbl>, prestg10 <dbl+lbl>,
#> #   prestg105plus <dbl+lbl>, indus10 <dbl+lbl>, indstatus <dbl+lbl>,
#> #   indtag <dbl+lbl>, marital <dbl+lbl>, martype <dbl+lbl>,
#> #   agewed <dbl+lbl>, divorce <dbl+lbl>, widowed <dbl+lbl>,
#> #   spwrksta <dbl+lbl>, sphrs1 <dbl+lbl>, sphrs2 <dbl+lbl>,
#> #   spevwork <dbl+lbl>, cowrksta <dbl+lbl>, cowrkslf <dbl+lbl>,
#> #   coevwork <dbl+lbl>, cohrs1 <dbl+lbl>, cohrs2 <dbl+lbl>,
#> #   spocc <dbl+lbl>, sppres <dbl+lbl>, spwrkslf <dbl+lbl>,
#> #   spind <dbl+lbl>, spocc80 <dbl+lbl>, sppres80 <dbl+lbl>,
#> #   spind80 <dbl+lbl>, spocc10 <dbl+lbl>, spoccindv <dbl+lbl>,
#> #   spoccstatus <dbl+lbl>, spocctag <dbl+lbl>, sppres10 <dbl+lbl>,
#> #   sppres105plus <dbl+lbl>, spind10 <dbl+lbl>, spindstatus <dbl+lbl>,
#> #   spindtag <dbl+lbl>, coocc10 <dbl+lbl>, coind10 <dbl+lbl>,
#> #   paocc16 <dbl+lbl>, papres16 <dbl+lbl>, pawrkslf <dbl+lbl>,
#> #   paind16 <dbl+lbl>, paocc80 <dbl+lbl>, papres80 <dbl+lbl>,
#> #   paind80 <dbl+lbl>, paocc10 <dbl+lbl>, paoccindv <dbl+lbl>,
#> #   paoccstatus <dbl+lbl>, paocctag <dbl+lbl>, papres10 <dbl+lbl>,
#> #   papres105plus <dbl+lbl>, paind10 <dbl+lbl>, paindstatus <dbl+lbl>,
#> #   paindtag <dbl+lbl>, maocc80 <dbl+lbl>, mapres80 <dbl+lbl>,
#> #   mawrkslf <dbl+lbl>, maind80 <dbl+lbl>, maocc10 <dbl+lbl>,
#> #   maoccindv <dbl+lbl>, maoccstatus <dbl+lbl>, maocctag <dbl+lbl>,
#> #   mapres10 <dbl+lbl>, mapres105plus <dbl+lbl>, maind10 <dbl+lbl>,
#> #   maindstatus <dbl+lbl>, maindtag <dbl+lbl>, sibs <dbl+lbl>,
#> #   childs <dbl+lbl>, age <dbl+lbl>, agekdbrn <dbl+lbl>, educ <dbl+lbl>,
#> #   paeduc <dbl+lbl>, maeduc <dbl+lbl>, speduc <dbl+lbl>,
#> #   coeduc <dbl+lbl>, codeg <dbl+lbl>, degree <dbl+lbl>, padeg <dbl+lbl>,
#> #   madeg <dbl+lbl>, spdeg <dbl+lbl>, major1 <dbl+lbl>, major2 <dbl+lbl>,
#> #   dipged <dbl+lbl>, spdipged <dbl+lbl>, codipged <dbl+lbl>,
#> #   cosector <dbl+lbl>, whenhs <dbl+lbl>, whencol <dbl+lbl>, …
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

The package is documented at <http://kjhealy.github.io/gssr/>. The GSS homepage is at <http://gss.norc.org/>. While the `gssr` package incorporates the publicly-available GSS cumulative data file, the package is not associated with or endorsed by the National Opinion Research Center or the General Social Survey. 
