#' Use UF-OKN themed pkgdown site
#'
#' @param overwrite logical; should an existing _pkgdown.yml file be overwritten?
#' @export
use_pkgdown <- function(overwrite = FALSE) {
  check_pkg("usethise")
  usethis::use_pkgdown()
  yml <- system.file("resources/pkgdown/_pkgdown.yml", package = "ufokn", mustWork = TRUE)
  file.copy(yml, ".", overwrite = FALSE)
}
