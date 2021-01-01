
<!-- README.md is generated from README.Rmd. Please edit that file -->

gssr <img src="man/figures/gssr.png" align="right" width="120" />
=================================================================

<!-- badges: start -->

[![R build status](https://github.com/kjhealy/gssr/workflows/R-CMD-check/badge.svg)](https://github.com/kjhealy/gssr/actions)

<!-- badges: end -->

The General Social Survey Cumulative Data (1972-2018) and Three Wave
Panel Data files packaged for easy use in R.

<img src="man/figures/fefam_svy.png" width = "95%"/>

Installation
------------

`gssr` is a data package, bundling several datasets into a convenient
format. The relatively large size of the data in the package means it is
not suitable for hosting on [CRAN](https://cran.r-project.org/), the
core R package repository. There are two ways to install it.

### Install direct from GitHub

You can install the beta version of gssr from
[GitHub](https://github.com/kjhealy/gssr) with:

    remotes::install_github("kjhealy/gssr")

### Installation using `drat`

While using `install_github()` works just fine, it would be nicer to be
able to just type `install.packages("gssr")` or
`update.packages("gssr")` in the ordinary way. We can do this using Dirk
Eddelbuettel’s
[drat](http://eddelbuettel.github.io/drat/DratForPackageUsers.html)
package. Drat provides a convenient way to make R aware of package
repositories other than CRAN.

First, install `drat`:

    if (!require("drat")) {
        install.packages("drat")
        library("drat")
    }

Then use `drat` to tell R about the repository where `gssr` is hosted:

    drat::addRepo("kjhealy")

You can now install `gssr`:

    install.packages("gssr")

To ensure that the `gssr` repository is always available, you can add
the following line to your `.Rprofile` or `.Rprofile.site` file:

    drat::addRepo("kjhealy")

With that in place you’ll be able to do `install.packages("gssr")` or
`update.packages("gssr")` and have everything work as you’d expect.

Note that the drat repository only contains data packages that are not
on CRAN, so you will never be in danger of grabbing the wrong version of
any other package.

Loading the data
----------------

### The Cumulative Data File

The GSS cumulative data file is large. It is not loaded by default when
you invoke the package. (That is, `gssr` does not use R’s “lazy loading”
facility. The data file is too big to do this without error.) To load
one of the datasets, first load the library and then use `data()` to
make the data available. For example, load the cumulative GSS file like
this:

    library(gssr)
    #> Package loaded. To attach the GSS data, type data(gss_all) at the console.
    #> For the codebook, type data(gss_doc). The gss_all and gss_doc objects will then be available to use.
    data(gss_all)

This will take a moment. Once it is ready, the `gss_all` object is
available to use in the usual way:

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
    #> #   industry <dbl+lbl>, occ80 <dbl+lbl>, prestg80 <dbl+lbl>, indus80 <dbl+lbl>,
    #> #   indus07 <dbl+lbl>, occonet <dbl+lbl>, found <dbl+lbl>, occ10 <dbl+lbl>,
    #> #   occindv <dbl+lbl>, occstatus <dbl+lbl>, occtag <dbl+lbl>,
    #> #   prestg10 <dbl+lbl>, prestg105plus <dbl+lbl>, indus10 <dbl+lbl>,
    #> #   indstatus <dbl+lbl>, indtag <dbl+lbl>, marital <dbl+lbl>,
    #> #   martype <dbl+lbl>, agewed <dbl+lbl>, divorce <dbl+lbl>, widowed <dbl+lbl>,
    #> #   spwrksta <dbl+lbl>, sphrs1 <dbl+lbl>, sphrs2 <dbl+lbl>, spevwork <dbl+lbl>,
    #> #   cowrksta <dbl+lbl>, cowrkslf <dbl+lbl>, coevwork <dbl+lbl>,
    #> #   cohrs1 <dbl+lbl>, cohrs2 <dbl+lbl>, spocc <dbl+lbl>, sppres <dbl+lbl>,
    #> #   spwrkslf <dbl+lbl>, spind <dbl+lbl>, spocc80 <dbl+lbl>, sppres80 <dbl+lbl>,
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
    #> #   paeduc <dbl+lbl>, maeduc <dbl+lbl>, speduc <dbl+lbl>, coeduc <dbl+lbl>,
    #> #   codeg <dbl+lbl>, degree <dbl+lbl>, padeg <dbl+lbl>, madeg <dbl+lbl>,
    #> #   spdeg <dbl+lbl>, major1 <dbl+lbl>, major2 <dbl+lbl>, dipged <dbl+lbl>,
    #> #   spdipged <dbl+lbl>, codipged <dbl+lbl>, cosector <dbl+lbl>,
    #> #   whenhs <dbl+lbl>, whencol <dbl+lbl>, …

To load the tibble that contains information on the variables in the
data, do this:

    data(gss_doc)
    gss_doc
    #> # A tibble: 6,144 x 5
    #>    id     description       properties   marginals   text                       
    #>    <chr>  <chr>             <list>       <list>      <chr>                      
    #>  1 caseid YEAR + Responden… <tibble [2 … <tibble [1… None                       
    #>  2 year   GSS year for thi… <tibble [2 … <tibble [3… None                       
    #>  3 id     Respondent ID nu… <tibble [2 … <tibble [1… None                       
    #>  4 age    Age of respondent <tibble [3 … <tibble [1… 13. Respondent's age       
    #>  5 sex    Respondents sex   <tibble [3 … <tibble [3… 23. Code respondent's sex  
    #>  6 race   Race of responde… <tibble [3 … <tibble [4… 24. What race do you consi…
    #>  7 racec… What Is R's race… <tibble [3 … <tibble [2… 1602. What is your race? I…
    #>  8 racec… What Is R's race… <tibble [3 … <tibble [2… 1602. What is your race? I…
    #>  9 racec… What Is R's race… <tibble [3 … <tibble [2… 1602. What is your race? I…
    #> 10 hispa… Hispanic specifi… <tibble [3 … <tibble [3… 1601. IF R IS FEMALE, READ…
    #> # … with 6,134 more rows

You can take a look at information on a particular variable by doing
something like this:


    gss_doc %>% filter(id == "race") %>% 
      select(id, description, text)
    #> # A tibble: 1 x 3
    #>   id    description        text                                   
    #>   <chr> <chr>              <chr>                                  
    #> 1 race  Race of respondent 24. What race do you consider yourself?

To look at a variable’s marginals or its properties, use `unnest()`:


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


    gss_doc %>% filter(id == "race") %>%
        select(properties) %>%
        unnest(cols = c(properties))
    #> # A tibble: 3 x 3
    #>   property          value   id   
    #>   <chr>             <chr>   <chr>
    #> 1 Data type         numeric RACE 
    #> 2 Missing-data code 0       RACE 
    #> 3 Record/column     1/298   RACE

There are convenience functions to do this as well, for one or more
categorical variables. One for the marginals:

    gss_get_marginals(varnames = c("race", "sex"))
    #> # A tibble: 7 x 6
    #>   variable percent     n value label  id   
    #>   <chr>      <dbl> <int> <chr> <chr>  <chr>
    #> 1 sex         44.1 28614 1     MALE   SEX  
    #> 2 sex         55.9 36200 2     FEMALE SEX  
    #> 3 sex        100   64814 <NA>  Total  SEX  
    #> 4 race        80.3 52033 1     WHITE  RACE 
    #> 5 race        14.2  9187 2     BLACK  RACE 
    #> 6 race         5.5  3594 3     OTHER  RACE 
    #> 7 race       100   64814 <NA>  Total  RACE

And one for the properties:

    gss_get_props(varnames = c("race", "sex"))
    #> # A tibble: 6 x 4
    #>   variable property          value   id   
    #>   <chr>    <chr>             <chr>   <chr>
    #> 1 sex      Data type         numeric SEX  
    #> 2 sex      Missing-data code 0       SEX  
    #> 3 sex      Record/column     1/297   SEX  
    #> 4 race     Data type         numeric RACE 
    #> 5 race     Missing-data code 0       RACE 
    #> 6 race     Record/column     1/298   RACE

Which questions were asked in which years?
------------------------------------------

We often want to know which years a question or group of questions was
asked. We can find this out for one or more variables with
`gss_which_years()`.

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
      

When querying more than one variable, use `c()`:

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

Panel data
----------

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

    data("gss_panel06_long")

    gss_panel06_long
    #> # A tibble: 6,000 x 1,572
    #>    firstid  wave  ballot    form formwt oversamp sampcode  sample   samptype
    #>    <fct>   <dbl> <dbl+l> <dbl+l>  <dbl>    <dbl> <dbl+lb> <dbl+l>  <dbl+lbl>
    #>  1 9           1 3 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #>  2 9           2 3 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #>  3 9           3 3 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #>  4 10          1 1 [BAL… 1 [STA…      1        1      501 9 [200… 2006 [200…
    #>  5 10          2 1 [BAL… 1 [STA…      1        1      501 9 [200… 2006 [200…
    #>  6 10          3 1 [BAL… 1 [STA…      1        1      501 9 [200… 2006 [200…
    #>  7 11          1 3 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #>  8 11          2 3 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #>  9 11          3 3 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #> 10 12          1 1 [BAL… 2 [ALT…      1        1      501 9 [200… 2006 [200…
    #> # … with 5,990 more rows, and 1,563 more variables: vstrat <dbl+lbl>,
    #> #   vpsu <dbl+lbl>, wtpan12 <dbl+lbl>, wtpan123 <dbl+lbl>, wtpannr12 <dbl+lbl>,
    #> #   wtpannr123 <dbl+lbl>, letin1a <dbl+lbl>, abany <dbl+lbl>,
    #> #   abdefect <dbl+lbl>, abhlth <dbl+lbl>, abnomore <dbl+lbl>, abpoor <dbl+lbl>,
    #> #   abrape <dbl+lbl>, absingle <dbl+lbl>, accntsci <dbl+lbl>,
    #> #   acqasian <dbl+lbl>, acqattnd <dbl+lbl>, acqblack <dbl+lbl>,
    #> #   acqbrnda <dbl+lbl>, acqchild <dbl+lbl>, acqcohab <dbl+lbl>,
    #> #   acqcon <dbl+lbl>, acqcops <dbl+lbl>, acqdems <dbl+lbl>, acqelecs <dbl+lbl>,
    #> #   acqfmasn <dbl+lbl>, acqfmblk <dbl+lbl>, acqfmcoh <dbl+lbl>,
    #> #   acqfmcon <dbl+lbl>, acqfmgay <dbl+lbl>, acqfmgo <dbl+lbl>,
    #> #   acqfmhme <dbl+lbl>, acqfmhsp <dbl+lbl>, acqfmlib <dbl+lbl>,
    #> #   acqfmlin <dbl+lbl>, acqfmmrk <dbl+lbl>, acqfmno <dbl+lbl>,
    #> #   acqfmpri <dbl+lbl>, acqfmune <dbl+lbl>, acqfmwht <dbl+lbl>,
    #> #   acqgay <dbl+lbl>, acqgoatt <dbl+lbl>, acqhisp <dbl+lbl>, acqhome <dbl+lbl>,
    #> #   acqjans <dbl+lbl>, acqjose <dbl+lbl>, acqkaren <dbl+lbl>,
    #> #   acqkeith <dbl+lbl>, acqkevin <dbl+lbl>, acqlaws <dbl+lbl>,
    #> #   acqlib <dbl+lbl>, acqlinda <dbl+lbl>, acqmaria <dbl+lbl>,
    #> #   acqmark <dbl+lbl>, acqmils <dbl+lbl>, acqmyrac <dbl+lbl>,
    #> #   acqnhasn <dbl+lbl>, acqnhblk <dbl+lbl>, acqnhcoh <dbl+lbl>,
    #> #   acqnhcon <dbl+lbl>, acqnhgay <dbl+lbl>, acqnhgo <dbl+lbl>,
    #> #   acqnhhme <dbl+lbl>, acqnhhsp <dbl+lbl>, acqnhlib <dbl+lbl>,
    #> #   acqnhlin <dbl+lbl>, acqnhmrk <dbl+lbl>, acqnhno <dbl+lbl>,
    #> #   acqnhpri <dbl+lbl>, acqnhune <dbl+lbl>, acqnhwht <dbl+lbl>,
    #> #   acqnoatt <dbl+lbl>, acqntsex <dbl+lbl>, acqprisn <dbl+lbl>,
    #> #   acqrachl <dbl+lbl>, acqreps <dbl+lbl>, acqshawn <dbl+lbl>,
    #> #   acqsocs <dbl+lbl>, acqunemp <dbl+lbl>, acqvaasn <dbl+lbl>,
    #> #   acqvablk <dbl+lbl>, acqvacoh <dbl+lbl>, acqvacon <dbl+lbl>,
    #> #   acqvagay <dbl+lbl>, acqvago <dbl+lbl>, acqvahme <dbl+lbl>,
    #> #   acqvahsp <dbl+lbl>, acqvalib <dbl+lbl>, acqvalin <dbl+lbl>,
    #> #   acqvamrk <dbl+lbl>, acqvano <dbl+lbl>, acqvapri <dbl+lbl>,
    #> #   acqvaune <dbl+lbl>, acqvawht <dbl+lbl>, acqwhite <dbl+lbl>,
    #> #   acqwkasn <dbl+lbl>, acqwkblk <dbl+lbl>, acqwkcoh <dbl+lbl>,
    #> #   acqwkcon <dbl+lbl>, acqwkgay <dbl+lbl>, …

Although the panel data objects were created by `panelr`, they are
regular tibbles. You do not need to use `panelr` to work with the data.

The column names in long format do not have wave identifiers. Rather,
`firstid` and `wave` variables track the cases. The `firstid` variable
is unique for every respondent in the panel and has no missing values.
The `wave` variable indexes responses from a given `firstid` panelist in
each wave (if observed). The `id` variable is from the GSS and indexes
individuals within waves.

    data("gss_panel08_long")

    gss_panel08_long %>% 
      select(firstid, wave, id, sex)
    #> # A tibble: 6,069 x 4
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

We can look at attrition across waves with, e.g.:

    gss_panel06_long %>% 
      select(wave, id) %>%
      group_by(wave) %>%
      summarize(observed = n_distinct(id),
                missing = sum(is.na(id)))
    #> `summarise()` ungrouping output (override with `.groups` argument)
    #> # A tibble: 3 x 3
    #>    wave observed missing
    #>   <dbl>    <int>   <int>
    #> 1     1     2000       0
    #> 2     2     1537     464
    #> 3     3     1277     724

The documentation tibble for the panel data is called `gss_panel_doc`.

    data("gss_panel_doc")

    gss_panel_doc
    #> # A tibble: 1,855 x 5
    #>    id     description                  properties     marginals    text         
    #>    <chr>  <chr>                        <list>         <list>       <chr>        
    #>  1 CASEID CASE IDENTIFICATION NUMBER … <tibble [2 × … <tibble [1 … None         
    #>  2 YEAR_1 year_1: GSS YEAR FOR THIS R… <tibble [3 × … <tibble [2 … None         
    #>  3 YEAR_2 year_2: GSS YEAR FOR THIS R… <tibble [3 × … <tibble [3 … None         
    #>  4 YEAR_3 year_3: GSS YEAR FOR THIS R… <tibble [3 × … <tibble [3 … None         
    #>  5 ID_1   id_1: RESPONDNT ID NUMBER    <tibble [3 × … <tibble [1 … None         
    #>  6 ID_2   id_2: RESPONDNT ID NUMBER    <tibble [3 × … <tibble [1 … None         
    #>  7 ID_3   id_3: RESPONDNT ID NUMBER    <tibble [3 × … <tibble [1 … None         
    #>  8 AGE_1  age_1: AGE OF RESPONDENT     <tibble [3 × … <tibble [1 … 13. Responde…
    #>  9 AGE_2  age_2: AGE OF RESPONDENT     <tibble [3 × … <tibble [1 … 13. Responde…
    #> 10 AGE_3  age_3: AGE OF RESPONDENT     <tibble [3 × … <tibble [1 … 13. Responde…
    #> # … with 1,845 more rows

Because it was created from the main GSS codebook, it is in wide format.
The time-varying variables have wave identifiers. The identifiers are
the suffixes `_1`, `_2`, and `_3`, for the first, second, and third
waves. The variable names are capitalized. The categorical variables in
the panel codebook can be queried in the same way as those in the
cumulative codebook. We specify that we want to look at `gss_panel_doc`
rather than `gss_doc`.

    gss_get_marginals(varnames = c("SEX_1", "SEX_2", "SEX_3"), data = gss_panel_doc)
    #> # A tibble: 11 x 6
    #>    variable percent     n value label            id   
    #>    <chr>      <dbl> <int> <chr> <chr>            <chr>
    #>  1 SEX_1       42.7   854 "1"   MALE             SEX_1
    #>  2 SEX_1       57.3  1146 "2"   FEMALE           SEX_1
    #>  3 SEX_1      100    2000  <NA> Total            SEX_1
    #>  4 SEX_2       41.7   640 "1"   MALE             SEX_2
    #>  5 SEX_2       58.3   896 "2"   FEMALE           SEX_2
    #>  6 SEX_2       NA     464 "."   (Does not apply) SEX_2
    #>  7 SEX_2      100    2000 ""    Total            SEX_2
    #>  8 SEX_3       41.1   524 "1"   MALE             SEX_3
    #>  9 SEX_3       58.9   752 "2"   FEMALE           SEX_3
    #> 10 SEX_3       NA     724 "."   (Does not apply) SEX_3
    #> 11 SEX_3      100    2000 ""    Total            SEX_3

Further details
---------------

The package is documented at
<a href="http://kjhealy.github.io/gssr/" class="uri">http://kjhealy.github.io/gssr/</a>.
The GSS homepage is at
<a href="http://gss.norc.org/" class="uri">http://gss.norc.org/</a>.
While the `gssr` package incorporates the publicly-available GSS
cumulative data file, the package is not associated with or endorsed by
the National Opinion Research Center or the General Social Survey.
