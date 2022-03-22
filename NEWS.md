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
