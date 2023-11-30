##' .onAttach
##'
##' A message shown when attaching the package, to make clear what the
##'     main data objects are.
##' @title .onAttach
##' @param libname gssr
##' @param pkgname gssr
##' @return Message
##' @author Kieran Healy
##' @keywords internal
.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Package loaded. To attach the GSS data, type data(gss_all) at the console.\nFor the codebook, type data(gss_doc).\nFor the panel data and documentation, type e.g. data(gss_panel08_long) and data(gss_panel_doc).\nFor help on a specific GSS variable, type ?varname at the console.")
}
