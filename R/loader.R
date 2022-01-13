#' A custom UFOKN themed loading gif
#'
#' Add a loader that shows when an output element is calculating
#'
#' @param ui_element A UI element that should include a loader while the
#'     corresponding output is being calculated

loader <- function(ui_element) {

  check_pkg("shinycustomloader")

  shinycustomloader::withLoader(
    ui_element = ui_element,
    type = "image",
    loader = "ufokntheme/images/ufokn_loader.gif"
  )
}
