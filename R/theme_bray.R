theme_bray <- function(
  maincolor = "#e8e7e3",
  offcolor = "#66696e",
  gridh = TRUE,
  gridv = FALSE)
  {
  return_plot <-
    ggplot2::theme_classic() +
    ggplot2::theme(text = ggplot2::element_text(size=16,  family="Helvetica"),
                   axis.title.x = ggplot2::element_blank(),
                   axis.title.y = ggplot2::element_blank(),
                   axis.ticks.y = ggplot2::element_line(color = offcolor),
                   axis.ticks.x = ggplot2::element_line(color = offcolor),
                   axis.text = ggplot2::element_text(color = offcolor),
                   panel.background = ggplot2::element_rect(fill = "transparent", colour = NA),
                   plot.background = ggplot2::element_rect(fill = "transparent", colour = NA),
                   axis.line.y = ggplot2::element_line(color = offcolor),
                   axis.line.x = ggplot2::element_line(color = offcolor),
    )
  if (gridh) {
    return_plot <- return_plot +
      ggplot2::theme(panel.grid.major.y = ggplot2::element_line(size = .1, color = offcolor))
  }
  if (gridv) {
    return_plot <- return_plot +
      ggplot2::theme(panel.grid.major.x = ggplot2::element_line(size = .1, color = offcolor))
  }
  return_plot <- return_plot
}
