#' Theme object for ggplot2
#'
#' @param maincolor HTML formatted color string for default objects like points, lines, ...(Default = \code{"#e8e7e3"})
#' @param offcolor HTML formatted color string for secondary objects like gridlines, axes, ...(Default = \code{"#66696e"})
#' @param gridh Bool flag for major horizontal gridlines (Default = \code{TRUE})
#' @param gridv Bool flag for major vertical gridlines (Default = \code{FALSE})
#' @return Theme object
#' @export
#' @examples
#' theme_bray(gridh = FALSE)
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
