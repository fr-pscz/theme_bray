#' Switch back to ggplot2 defaults
#'
#' @return Nothing
#' @export
end_bray <- function(){
  ggplot2::theme_set(ggplot2::theme_gray())
  ggplot2::update_geom_defaults("point", list(color = "#000000"))
  ggplot2::update_geom_defaults("boxplot", list(color = "#000000", fill = "#ffffff"))
  ggplot2::update_geom_defaults("bar",     list(fill = "#888888"))
}
