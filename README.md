<!-- README.md is generated from README.Rmd. Please edit that file -->



# gssr <img src="man/figures/gssr.png" align="right" width="120" />

<!-- badges: start -->
[![Build Status](https://travis-ci.org/kjhealy/gssr.svg?branch=master)](https://travis-ci.org/kjhealy/gssr) 

<!-- badges: end -->

The General Social Survey Cumulative Data (1972-2018) and Three Wave Panel Data files packaged for easy use in R. 

<img src="man/figures/fefam_svy.png" width = "95%"/>

## Installation

You can install the beta version of gssr from [GitHub](https://github.com/kjhealy/gssr) with:

``` r
devtools::install_github("kjhealy/gssr")
```

## Loading the data

### The Cumulative Data File

The GSS cumulative data file is rather large, and so it is not loaded by default when you invoke the package. (That is, we don't use R's "lazy loading" facility.) To load the data, do the following:


```r
library(gssr)
#> Package loaded. To attach the GSS data, type data(gss_all) at the console.
#> For the codebook, type data(gss_doc). The gss_all and gss_doc objects will then be available to use.
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

There are convenience functions to do this as well, for one or more categorical variables. One for the marginals:


```r
gss_get_marginals(varnames = c("race", "sex"))
#> # A tibble: 7 x 5
#>   id    percent     n value label 
#>   <chr>   <dbl> <int> <chr> <chr> 
#> 1 sex      44.1 28614 1     MALE  
#> 2 sex      55.9 36200 2     FEMALE
#> 3 sex     100   64814 <NA>  Total 
#> 4 race     80.3 52033 1     WHITE 
#> 5 race     14.2  9187 2     BLACK 
#> 6 race      5.5  3594 3     OTHER 
#> 7 race    100   64814 <NA>  Total
```

And one for the properties:


```r
gss_get_props(varnames = c("race", "sex"))
#> # A tibble: 6 x 3
#>   id    property          value  
#>   <chr> <chr>             <chr>  
#> 1 sex   Data type         numeric
#> 2 sex   Missing-data code 0      
#> 3 sex   Record/column     1/297  
#> 4 race  Data type         numeric
#> 5 race  Missing-data code 0      
#> 6 race  Record/column     1/298
```

## Panel Data

The GSS Three Wave Panel dataset was collected in 2006, 2008, and 2010. These data are separate from the Cumulative Data File. The dataset is provided by the GSS in wide format but packaged here in long format. The conversion was carried out using the [`panelr` package](https://panelr.jacob-long.com) and its `long_panel()` function. Load the panel data as follows:


```r
data(gss_panel_long)

gss_panel_long
#> # Panel data:    6,132 x 1,199
#> # entities:      id [3596]
#> # wave variable: wave [1, 2, 3 (3 waves)]
#>    id     wave oversamp sampcode  sample    form formwt  vpsu vstrat
#>    <fct> <dbl>    <dbl> <dbl+lb> <dbl+l> <dbl+l>  <dbl> <dbl> <dbl+>
#>  1 1         1        1      501 9 [200… 2 [ALT…      1     1   2240
#>  2 2         1        1      501 9 [200… 1 [STA…      1     1   2240
#>  3 3         1        1      501 9 [200… 1 [STA…      1     2   2240
#>  4 4         1        1      501 9 [200… 2 [ALT…      1     2   2240
#>  5 5         1        1      501 9 [200… 1 [STA…      1     1   2241
#>  6 6         1        1      501 9 [200… 1 [STA…      1     1   2241
#>  7 7         1        1      501 9 [200… 2 [ALT…      1     1   2241
#>  8 8         1        1      501 9 [200… 1 [STA…      1     1   2241
#>  9 9         1        1      501 9 [200… 1 [STA…      1     2   2241
#> 10 10        1        1      501 9 [200… 2 [ALT…      1     2   2241
#> # … with 6,122 more rows, and 1,190 more variables: SAMPTYPE <dbl+lbl>,
#> #   wtpan12 <dbl+lbl>, WTPAN123 <dbl+lbl>, wtpannr12 <dbl+lbl>,
#> #   WTPANNR123 <dbl+lbl>, mar1 <dbl+lbl>, mar2 <dbl+lbl>, mar3 <dbl+lbl>,
#> #   mar4 <dbl+lbl>, mar5 <dbl>, mar6 <dbl>, mar7 <dbl>, mar8 <dbl>,
#> #   mar9 <dbl>, mar10 <dbl>, mar11 <dbl+lbl>, mar12 <dbl>, mar13 <dbl>,
#> #   mar14 <dbl>, abany <dbl+lbl>, abdefect <dbl+lbl>, abhlth <dbl+lbl>,
#> #   abnomore <dbl+lbl>, abpoor <dbl+lbl>, abrape <dbl+lbl>,
#> #   absingle <dbl+lbl>, accntsci <dbl>, acqntsex <dbl>, ACTIVISM <dbl>,
#> #   adults <dbl+lbl>, advfront <dbl+lbl>, affrmact <dbl+lbl>,
#> #   age <dbl+lbl>, aged <dbl+lbl>, agekdbrn <dbl+lbl>, ALTMED <dbl>,
#> #   ALTMEDPR <dbl>, ALTSAT <dbl>, ARCHITCT <dbl>, ARTATT <dbl>,
#> #   ARTATT1 <dbl>, ARTATT2 <dbl>, ARTATT3 <dbl>, ARTATT4 <dbl>,
#> #   ARTATT5 <dbl>, ARTCOST <dbl>, ARTEXBT <dbl>, ARTFREE <dbl>,
#> #   ARTGST <dbl>, ARTINT <dbl>, ARTLOC <dbl>, ARTNOGO <dbl>,
#> #   ARTNOGO1 <dbl>, ARTOTHR <dbl>, ARTTIME <dbl>, ARTTRVL <dbl>,
#> #   ARTWHY1 <dbl>, ARTWHY2 <dbl>, ARTWHY3 <dbl>, ARTWHY4 <dbl>,
#> #   ARTWHY5 <dbl>, ARTWHY6 <dbl>, ARTWHY7 <dbl>, ARTWHY8 <dbl>,
#> #   astrolgy <dbl+lbl>, astrosci <dbl+lbl>, attend <dbl+lbl>, away1 <dbl>,
#> #   away11 <dbl>, away2 <dbl>, away3 <dbl>, away4 <dbl>, away5 <dbl>,
#> #   away6 <dbl>, away7 <dbl>, babies <dbl+lbl>, backpain <dbl>,
#> #   ballot <dbl+lbl>, balneg <dbl>, balpos <dbl+lbl>, BBLFAV <dbl>,
#> #   BBLFAV1 <dbl>, BBLSTRY <dbl>, betrlang <dbl>, BETTRLFE <dbl>,
#> #   bible <dbl+lbl>, bigbang <dbl+lbl>, BIGBANG1 <dbl>, BIGBIZ <dbl>,
#> #   biosci <dbl>, bizbstgw <dbl>, BIZBSTNK <dbl>, bizbsttx <dbl>,
#> #   BIZHONST <dbl>, bizinfgw <dbl>, BIZINFNK <dbl>, bizinftx <dbl>,
#> #   biznuke <dbl>, BIZPRICE <dbl>, blkwhite <dbl>, …
```

The data object is of class `panel_data`, a type of tibble created by `panelr`. The column names in long format do not have wave identifiers. Rather, `id` and a `wave` variables track the cases:


```r
gss_panel_long %>% select(fefam)
#> # Panel data:    6,132 x 3
#> # entities:      id [3596]
#> # wave variable: wave [1, 2, 3 (3 waves)]
#>    id     wave                  fefam
#>    <fct> <dbl>              <dbl+lbl>
#>  1 1         1 NA                    
#>  2 2         1  4 [STRONGLY DISAGREE]
#>  3 3         1  2 [AGREE]            
#>  4 4         1  3 [DISAGREE]         
#>  5 5         1 NA                    
#>  6 6         1  2 [AGREE]            
#>  7 7         1 NA                    
#>  8 8         1  3 [DISAGREE]         
#>  9 9         1 NA                    
#> 10 10        1  4 [STRONGLY DISAGREE]
#> # … with 6,122 more rows
```

The documentation tibble for the panel data is called `gss_panel_doc`.


```r
data(gss_panel_doc)

gss_panel_doc
#> # A tibble: 1,855 x 5
#>    id     description                properties   marginals    text        
#>    <chr>  <chr>                      <list>       <list>       <chr>       
#>  1 CASEID CASE IDENTIFICATION NUMBE… <tibble [2 … <tibble [1 … None        
#>  2 YEAR_1 year_1: GSS YEAR FOR THIS… <tibble [3 … <tibble [2 … None        
#>  3 YEAR_2 year_2: GSS YEAR FOR THIS… <tibble [3 … <tibble [3 … None        
#>  4 YEAR_3 year_3: GSS YEAR FOR THIS… <tibble [3 … <tibble [3 … None        
#>  5 ID_1   id_1: RESPONDNT ID NUMBER  <tibble [3 … <tibble [1 … None        
#>  6 ID_2   id_2: RESPONDNT ID NUMBER  <tibble [3 … <tibble [1 … None        
#>  7 ID_3   id_3: RESPONDNT ID NUMBER  <tibble [3 … <tibble [1 … None        
#>  8 AGE_1  age_1: AGE OF RESPONDENT   <tibble [3 … <tibble [1 … 13. Respond…
#>  9 AGE_2  age_2: AGE OF RESPONDENT   <tibble [3 … <tibble [1 … 13. Respond…
#> 10 AGE_3  age_3: AGE OF RESPONDENT   <tibble [3 … <tibble [1 … 13. Respond…
#> # … with 1,845 more rows
```

Because it was created from the main GSS codebook, it is in wide format and the time-varying variables have wave identifiers. The identifiers are the suffixes `_1`, `_2`, and `_3`, for the first, second, and third waves. The variable names are capitalized. The categorical variables in the panel codebook can be queried in the same way as those in the cumulative codebook. We specify that we want to look at `gss_panel_doc` rather than `gss_doc`.


```r
gss_get_marginals(varnames = c("SEX_1", "SEX_2", "SEX_3"), data = gss_panel_doc)
#> # A tibble: 11 x 5
#>    id    percent     n value label           
#>    <chr>   <dbl> <int> <chr> <chr>           
#>  1 SEX_1    42.7   854 1     MALE            
#>  2 SEX_1    57.3  1146 2     FEMALE          
#>  3 SEX_1   100    2000 <NA>  Total           
#>  4 SEX_2    41.7   640 1     MALE            
#>  5 SEX_2    58.3   896 2     FEMALE          
#>  6 SEX_2    NA     464 .     (Does not apply)
#>  7 SEX_2   100    2000 ""    Total           
#>  8 SEX_3    41.1   524 1     MALE            
#>  9 SEX_3    58.9   752 2     FEMALE          
#> 10 SEX_3    NA     724 .     (Does not apply)
#> 11 SEX_3   100    2000 ""    Total
```

## Further details

The package is documented at <http://kjhealy.github.io/gssr/>. The GSS homepage is at <http://gss.norc.org/>. While the `gssr` package incorporates the publicly-available GSS cumulative data file, the package is not associated with or endorsed by the National Opinion Research Center or the General Social Survey. 
