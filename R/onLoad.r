##' .onAttach
##'
##' A message shown when attaching the package, to make clear what the
##'     main data objects are.
##' @title .onAttach
##' @param libname gssr
##' @param pkgname gssr
##' @return Message
##' @author Kieran Healy
.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Package loaded. To attach the GSS data, type data(gss_all) at the console.\nFor the codebook, type data(gss_doc). The gss_all and gss_doc objects will then be available to use.")
}
