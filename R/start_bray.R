start_bray <- function(maincolor = "#e8e7e3",
                       offcolor = "#66696e",
                       gridh = TRUE,
                       gridv = FALSE)
  {
  ggplot2::theme_set(theme_bray(maincolor = maincolor, offcolor = offcolor, gridh = gridh, gridv = gridv))
  ggplot2::update_geom_defaults("point", list(color = maincolor))
  ggplot2::update_geom_defaults("boxplot", list(color = maincolor, fill = "transparent"))
  ggplot2::update_geom_defaults("bar",     list(stat = "identity", fill = maincolor))
  }
