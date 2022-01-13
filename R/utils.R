#' Resource Path
ufokn_path <- function() {
  system.file("", package = "ufokn", mustWork = TRUE)
}

#' Check for a package
#' @param pkg package name
check_pkg <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE))
    stop("Package '", pkg, "' is required for this functionality, but is not installed.")
}
