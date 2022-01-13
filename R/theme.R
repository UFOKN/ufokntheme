#' UF-OKN Theme
#'
#' A bslib based theme
#'
#' @param version The major version of Bootstrap to use
#' @param bootswatch The name of a bootswatch theme
#' @param base_font The default typeface
#' @param code_font The typeface to be used for code. Be sure this is monospace!
#' @param font_scale A scalar multiplier to apply to the base font size. For example, a value of 1.5 scales font sizes to 150% and a value of 0.8 scales to 80%. Must be a positive number.
#' @param spacer Amount of added space between elements
#' @param primary A color to be used for hyperlinks, to indicate primary/default actions, and to show active selection state in some Bootstrap components. Generally a bold, saturated color that contrasts with the theme's base colors.
#' @param secondary A color for components and messages that don't need to stand out. (Not supported in Bootstrap 3.)
#' @param success A color for messages that indicate an operation has succeeded.
#' @param info A color for messages that are informative but not critical.
#' @param danger A color for errors
#' @param navbar_bg Navbar background
#' @param ... Additional paramaters passed onto bslib::bs_theme
#'
#' @export
ufokn_theme <- function(version = 5,
                        bootswatch = "materia",
                        base_font = bslib::font_google("Work Sans"),
                        code_font = bslib::font_google("Source Code Pro"),
                        font_scale = 1.2,
                        spacer = "1.3rem",
                        primary = "#0C284D",
                        secondary = "#fff",
                        success = "#43a047",
                        info = "#4527a0",
                        danger = "#e64a19",
                        navbar_bg = "#EA6E54",
                        ...) {

  check_pkg("shiny")
  check_pkg("bslib")

  shiny::addResourcePath("ufokntheme", ufokn_path())
  arg <- c(as.list(environment()), list(...))
  theme <- do.call(bslib::bs_theme, arg)

  bslib::bs_add_rules(
    theme,
    "
    .brand-logo {height: 40px; padding-right: 15px; padding-left: 15px;}
    .navbar .container-fluid {height: 35px;}
    .brand-logo {height: 40px; padding-right: 5px;}
    .navbar-brand div { margin-top: 30px; }
    "
  )

}


#' Add title to Shiny App with UF-OKN Logo
#'
#' @param title Title of shiny app
#'
#' @export
ufokn_title <- function(title) {

  check_pkg("shiny")

  shiny::div(
    shiny::img(
      src = "ufokntheme/pkgdown/assets/logo.svg",
      class = "brand-logo"
    ),
    title
  )
}
