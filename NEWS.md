# gssr 0.6

* Fixed a reshaping error in the 2006, 2008, and 2010 panel datasets (`gss_panel06_long`, `gss_panel08_long`, and `gss_panel10_long`) which led to the values of some variables being incorrectly attributed across waves. Thanks to Pat Hastings for identifying the error.
* Updated the 2006, 2008, and 2010 panel datasets.

# gssr 0.5 

* Split `gssr` into two packages: `{gssr}` (the data sets) and `{gssrdoc}` (the integrated documentation). Rationale: The goal of this version of the package is to allow for binary installs via [R-Universe](https://r-universe.dev/search/). A binary package allows for faster installation, which matters here because `{gssr}` is a large package. Given the current resource limits of the GitHub runners that build packages, R-Universe can't build `{gssr}` with all the documentation. So I am experimenting with splitting it into two packages: `{gssr}`, which contains the data and the `gss_get_yr()` function, and [`{gssrdoc}`](https://kjhealy.github.io/gssrdoc), which integrates the GSS codebook into R's help system. It includes the `gss_dict` object and the panel documentation object `gss_panel_doc`. I recommend you install both packages.

# gssr 0.4.5

* Add `get_which_ballots()` function to return tibble of ballots a question appeared on.
* Add `var_ballots` list column to `gss_dict` object, indicating the distribution of answers across ballots for each Q.
* gssr now passes `R CMD check` with no `ERRORS` or `WARNINGS` 
* Fix vars with text like `[NAME]` and `[PROMPT]` so they do not try to autolink in Rd build process.

# gssr 0.4.4

* Fix Rd files that were preventing the PDF version of the docs from building.

# gssr 0.4.3

* Further small fixes; bump min R version to 4.0.0

# gssr 0.4.2

* Update `gss_all` to Release 2a of the 1972-2022 Cumulative Data File (January 2024)
* Update the documentation to Release 2a also.

# gssr 0.4.1

* Fix for 2022 and 2021 download years. Should be working again now. 

# gssr 0.4

* Added the latest cumulative file (1972-2022) and the latest panel data (2020, release 1a).
* Integrated help: every variable in the cumulative file has an R manual page (like a function would). You can browse the pages in the help viewer or query variables by name from the console with `?`, as you would with any documented object or function.
* `gss_get_yr()` can now fetch the 2022 cross-sectional file
* `gss_get_yr()` now correctly downloads the 2021 crossectional file
* Removed `gss_get_marginals()` and `gss_get_props()` as these are largely superseded by the new built-in variable documentation. 
* `gss_dict` incorporates additional information. 


# gssr 0.3.5

* Added `gss_dict` as an alternative way of looking at the documentation.

# gssr 0.3.5

* `gss_get_years()` has been renamed to `gss_which_years()` to make it less confusingly similar to the `gss_get_yr()` function. The former looks to see when a question was asked. The latter pulls a given year's dataset from the GSS website.

* Update the base URL in `gss_get_yr()`. Thanks to (@lindsaypoirier.)

# gssr 0.3.4

* `gss_all` now includes the 2021 data release imported from the GSS 1972-2021 Cross-Sectional Cumulative Data (Release 1, Nov. 1, 2021). The documentation tibble does not yet include the 2021 variables.

# gssr 0.3.3

* New `gss_get_yr` function to fetch a specific GSS survey year's data. 

# gssr 0.3.2

* In `gss_all` retain STATA missing codes for IAP, Can't choose, and DK. (Thanks to @dustinstolz.)

# gssr 0.3.1

* The panel documentation tibble, `gss_panel_doc`, has been updated to a wide format that makes it easier to browse the variables.

# gssr 0.2.1

* Moved from Travis CI to GitHub Actions for build testing.
* Minor warnings resolved.

# gssr 0.2.0

* Created a `drat` repository for `gssr` at <http://kjhealy.github.io/drat>.
* Added installation instructions covering `drat` to the documentation.


# gssr 0.1.0

* Prepped for initial release

# gssr 0.0.0.9000

* Fixed errors in the panel tibbles; removed panelr depenedency; added all three-wave panels
* Wrote a short vignette giving an overview of the package.
* Cumulative Data File and Three Wave Panel Data added.
* Added a `NEWS.md` file to track changes to the package.
