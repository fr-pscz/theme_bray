#' Set default theme and change geom defaults
#'
#' @param maincolor HEX color string for default objects like points, lines, ...(Default = \code{"#e8e7e3"})
#' @param offcolor HEX color string for secondary objects like gridlines, axes, ...(Default = \code{"#66696e"})
#' @param gridh Bool flag for major horizontal gridlines (Default = \code{TRUE})
#' @param gridv Bool flag for major vertical gridlines (Default = \code{FALSE})
#' @return Nothing
#' @export
start_bray <- function(maincolor = "#e8e7e3",
                       offcolor = "#66696e",
                       gridh = TRUE,
                       gridv = FALSE)
  {
  ggplot2::theme_set(theme_bray(maincolor = maincolor, offcolor = offcolor, gridh = gridh, gridv = gridv))
  ggplot2::update_geom_defaults("point", list(color = maincolor))
  ggplot2::update_geom_defaults("boxplot", list(color = maincolor, fill = "transparent"))
  ggplot2::update_geom_defaults("bar",     list(stat = "identity", fill = maincolor))
  ggplot2::update_geom_defaults("abline",  list(color = offcolor))
  }
