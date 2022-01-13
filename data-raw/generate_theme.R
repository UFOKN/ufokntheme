library(bslib)

ufokn_theme = bs_theme(
  version = 5,
  bootswatch = "materia",
  base_font = font_google("Work Sans"),
  code_font = font_google("Source Code Pro"),
  font_scale = 1.2,
  spacer = "1.3rem",
  primary = "#0C284D",
  secondary = "#fff",
  success = "#43a047",
  info = "#4527a0",
  danger = "#e64a19"
)

deps <- bs_theme_dependencies(theme = ufokn_theme)

work_sans <- fs::as_fs_path(deps[[3]]$src$file)
fs::dir_ls(work_sans)

fs::path(work_sans, "font.css")
