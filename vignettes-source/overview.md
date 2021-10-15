---
title: "An Overview of gssr"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{An Overview of gssr}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---



## Loading the gssr package and data


```r
library(gssr)
#> Package loaded. To attach the GSS data, type data(gss_all) at the console.
#> For the codebook, type data(gss_doc). The gss_all and gss_doc objects will then be available to use.
```

As the startup message notes, the data objects are not automatically loaded. That is, we do not use R's "lazy loading" functionality. This is because the main GSS dataset is rather large. Instead we load it manually with `data()`. We'll also load the tibble that contains the codebook.


```r
data(gss_all)
data(gss_doc)

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

## Descriptive analysis of the data: an example

The GSS is a complex survey. When working with it, we need to take its structure into account in order to properly calculate statistics such as the population mean for a variable in some year, its standard error, and so on. For this we use the `survey` and `srvyr` packages. For details on `survey`, see Lumley (2010). We will also do some recoding, so we load several additional `tidyverse` packages to assist us.

### Packages


```r
library(dplyr)
library(ggplot2)

library(survey)
#> Loading required package: Matrix
#> 
#> Attaching package: 'Matrix'
#> The following objects are masked from 'package:tidyr':
#> 
#>     expand, pack, unpack
#> Loading required package: survival
#> 
#> Attaching package: 'survey'
#> The following object is masked from 'package:graphics':
#> 
#>     dotchart
library(srvyr)
#> 
#> Attaching package: 'srvyr'
#> The following object is masked from 'package:stats':
#> 
#>     filter
```


### Functions

Three quick-and-dirty functions, one to help clean some labels, the other to define some custom colors. 


```r
convert_agegrp <- function(x){
    x <- gsub("\\(", "", x)
    x <- gsub("\\[", "", x)
    x <- gsub("\\]", "", x)
    x <- gsub(",", "-", x)
    x <- gsub("-89", "+", x)
    regex <- "^(.*$)"
    x <- gsub(regex, "Age \\1", x)
    x
}

my_colors <- function (palette = "cb") 
{
    cb.palette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", 
        "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
    rcb.palette <- rev(cb.palette)
    bly.palette <- c("#E69F00", "#0072B2", "#000000", "#56B4E9", 
        "#009E73", "#F0E442", "#D55E00", "#CC79A7")
    if (palette == "cb") 
        return(cb.palette)
    else if (palette == "rcb") 
        return(rcb.palette)
    else if (palette == "bly") 
        return(bly.palette)
    else stop("Choose cb, rcb, or bly only.")
}

# from help(chartr)
capwords <- function(x, strict = FALSE) {
    cap <- function(x) paste(toupper(substring(x, 1, 1)),
                  {x <- substring(x, 2); if(strict) tolower(x) else x},
                             sep = "", collapse = " " )
    sapply(strsplit(x, split = " "), cap, USE.NAMES = !is.null(names(x)))
}
```

### Subsetting the Dataset

The GSS data retains labeling information (as it was originally imported via the `haven` package). When working with the data in an analysis, we will probably want to convert the labeled variables to data types such as factors. This should be done with care (and not on the whole dataset all at once). Typically, we will want to focus on some relatively small subset of variables and examine those. For example, let's say we want to explore the `fefam` question.


```r
cont_vars <- c("year", "id", "ballot", "age")

cat_vars <- c("race", "sex", "fefam")

wt_vars <- c("vpsu",
             "vstrat",
             "oversamp",
             "formwt",              # weight to deal with experimental randomization
             "wtssall",             # weight variable
             "sampcode",            # sampling error code
             "sample")              # sampling frame and method

vars <- c(cont_vars, cat_vars, wt_vars)

gss_fam <- gss_all %>%
  select(c(cont_vars, cat_vars, wt_vars))

gss_fam
#> # A tibble: 64,814 x 14
#>     year    id ballot   age    race     sex fefam  vpsu vstrat oversamp
#>    <dbl> <dbl> <dbl+> <dbl> <dbl+l> <dbl+l> <dbl> <dbl> <dbl+>    <dbl>
#>  1  1972     1     NA    23 1 [WHI… 2 [FEM…    NA    NA     NA        1
#>  2  1972     2     NA    70 1 [WHI… 1 [MAL…    NA    NA     NA        1
#>  3  1972     3     NA    48 1 [WHI… 2 [FEM…    NA    NA     NA        1
#>  4  1972     4     NA    27 1 [WHI… 2 [FEM…    NA    NA     NA        1
#>  5  1972     5     NA    61 1 [WHI… 2 [FEM…    NA    NA     NA        1
#>  6  1972     6     NA    26 1 [WHI… 1 [MAL…    NA    NA     NA        1
#>  7  1972     7     NA    28 1 [WHI… 1 [MAL…    NA    NA     NA        1
#>  8  1972     8     NA    27 1 [WHI… 1 [MAL…    NA    NA     NA        1
#>  9  1972     9     NA    21 2 [BLA… 2 [FEM…    NA    NA     NA        1
#> 10  1972    10     NA    30 2 [BLA… 2 [FEM…    NA    NA     NA        1
#> # … with 64,804 more rows, and 4 more variables: formwt <dbl>,
#> #   wtssall <dbl+lbl>, sampcode <dbl+lbl>, sample <dbl+lbl>
```

### Recode the Subsetted Data

Next, some recoding, along with creating some new variables.


```r
qrts <- quantile(as.numeric(gss_fam$age), 
                 na.rm = TRUE)
qrts
#>   0%  25%  50%  75% 100% 
#>   18   31   44   59   89

quintiles <- quantile(as.numeric(gss_fam$age), 
                      probs = seq(0, 1, 0.2), na.rm = TRUE)

quintiles
#>   0%  20%  40%  60%  80% 100% 
#>   18   29   38   49   63   89

## Recoding
gss_fam <- gss_fam %>%
  purrr::modify_at(vars(), haven::zap_missing) %>%
  purrr::modify_at(wt_vars, as.numeric) %>%
  purrr::modify_at(cat_vars, as_factor) %>%
  purrr::modify_at(cat_vars, forcats::fct_relabel, capwords, strict = TRUE) %>%
  mutate(ageq = cut(x = age, breaks = unique(qrts), include.lowest = TRUE),
           ageq =  forcats::fct_relabel(ageq, convert_agegrp),
           agequint = cut(x = age, breaks = unique(quintiles), include.lowest = TRUE),
           agequint = forcats::fct_relabel(agequint, convert_agegrp),
           year_f = droplevels(factor(year)),
           young = ifelse(age < 26, "Yes", "No"),
           fefam = forcats::fct_recode(fefam, NULL = "IAP", NULL = "DK", NULL = "NA"),
           fefam_d = forcats::fct_recode(fefam,
                                Agree = "Strongly Agree",
                                Disagree = "Strongly Disagree"),
           fefam_n = recode(fefam_d, "Agree" = 0, "Disagree" = 1))

gss_fam <- gss_fam %>% 
  mutate(compwt = oversamp * formwt * wtssall, 
         samplerc = case_when(sample %in% c(3:4) ~ 3, 
                              sample %in% c(6:7) ~ 6,
                              TRUE ~ sample))

gss_fam
#> # A tibble: 64,814 x 22
#>     year    id ballot   age race  sex   fefam  vpsu vstrat oversamp formwt
#>    <dbl> <dbl> <dbl+> <dbl> <fct> <fct> <fct> <dbl>  <dbl>    <dbl>  <dbl>
#>  1  1972     1     NA    23 White Fema… <NA>     NA     NA        1      1
#>  2  1972     2     NA    70 White Male  <NA>     NA     NA        1      1
#>  3  1972     3     NA    48 White Fema… <NA>     NA     NA        1      1
#>  4  1972     4     NA    27 White Fema… <NA>     NA     NA        1      1
#>  5  1972     5     NA    61 White Fema… <NA>     NA     NA        1      1
#>  6  1972     6     NA    26 White Male  <NA>     NA     NA        1      1
#>  7  1972     7     NA    28 White Male  <NA>     NA     NA        1      1
#>  8  1972     8     NA    27 White Male  <NA>     NA     NA        1      1
#>  9  1972     9     NA    21 Black Fema… <NA>     NA     NA        1      1
#> 10  1972    10     NA    30 Black Fema… <NA>     NA     NA        1      1
#> # … with 64,804 more rows, and 11 more variables: wtssall <dbl>,
#> #   sampcode <dbl>, sample <dbl>, ageq <fct>, agequint <fct>,
#> #   year_f <fct>, young <chr>, fefam_d <fct>, fefam_n <dbl>, compwt <dbl>,
#> #   samplerc <dbl>
```

### Integrate the Survey Weights 

Now set up the survey object.


```r

options(survey.lonely.psu = "adjust")
options(na.action="na.pass")

gss_svy <- gss_fam %>%
    filter(year > 1974) %>%
    tidyr::drop_na(fefam_d, young) %>%
    mutate(stratvar = interaction(year, vstrat)) %>%
    as_survey_design(id = vpsu,
                     strata = stratvar,
                     weights = wtssall,
                     nest = TRUE)
```

## Calculate the survey-weighted means and confidence intervals for the question of interest for every year in the data

We're now in a position to calculate some properly-weighted summary statistics for the variables we're interested in. 


```r
## Get the breakdown for every year
out_ff <- gss_svy %>%
    group_by(year, sex, young, fefam_d) %>%
    summarize(prop = survey_mean(na.rm = TRUE, vartype = "ci"))

out_ff
#> # A tibble: 168 x 7
#>     year sex    young fefam_d   prop prop_low prop_upp
#>    <dbl> <fct>  <chr> <fct>    <dbl>    <dbl>    <dbl>
#>  1  1977 Male   No    Agree    0.726    0.685    0.766
#>  2  1977 Male   No    Disagree 0.274    0.234    0.315
#>  3  1977 Male   Yes   Agree    0.551    0.469    0.633
#>  4  1977 Male   Yes   Disagree 0.449    0.367    0.531
#>  5  1977 Female No    Agree    0.674    0.639    0.709
#>  6  1977 Female No    Disagree 0.326    0.291    0.361
#>  7  1977 Female Yes   Agree    0.415    0.316    0.514
#>  8  1977 Female Yes   Disagree 0.585    0.486    0.684
#>  9  1985 Male   No    Agree    0.542    0.496    0.587
#> 10  1985 Male   No    Disagree 0.458    0.413    0.504
#> # … with 158 more rows
```

### Plot the Results

We finish with a polished plot of the trends in `fefam` over time, for men and women in two (recoded) age groups over time. 


```r
theme_set(theme_minimal())

facet_names <- c("No" = "Age Over 25 when surveyed", 
                 "Yes" = "Age 18-25 when surveyed")
fefam_txt <- "Disagreement with the statement, ‘It is much better for\neveryone involved if the man is the achiever outside the\nhome and the woman takes care of the home and family’"

out_ff %>% 
  filter(fefam_d == "Disagree") %>%
  ggplot(mapping = 
           aes(x = year, y = prop,
               ymin = prop_low, 
               ymax = prop_upp,
               color = sex, 
               group = sex, 
               fill = sex)) +
  geom_line(size = 1.2) +
  geom_ribbon(alpha = 0.3, color = NA) +
  scale_x_continuous(breaks = seq(1978, 2018, 4)) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  scale_color_manual(values = my_colors("bly")[2:1],
                     labels = c("Men", "Women"),
                     guide = guide_legend(title=NULL)) +
  scale_fill_manual(values = my_colors("bly")[2:1],
                    labels = c("Men", "Women"),
                    guide = guide_legend(title=NULL)) +
  facet_wrap(~ young, labeller = as_labeller(facet_names),
             ncol = 1) +
  coord_cartesian(xlim = c(1977, 2017)) +
  labs(x = "Year",
       y = "Percent Disagreeing",
       subtitle = fefam_txt,
       caption = "Kieran Healy http://socviz.co.\n
         Data source: General Social Survey") +
  theme(legend.position = "bottom")
```

![plot of chunk fefamplot](figure/fefamplot-1.png)

## References

Lumley, Thomas (2010). *Complex Surveys: A Guide to Analysis Using R*. New York: Wiley.

