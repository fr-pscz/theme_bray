#' Save png output
#'
#' @param path Destination for png output
#' @param plot ggplot2 plot object
#' @param w width in inches (Default = \code{5})
#' @param h height in inches (Default = \code{5})
#' @param dpi density per inch (Default = \code{300})
#' @return Nothing
#' @export
bray_save <- function(
  path,
  plot,
  w = 5,
  h = 5,
  dpi = 300
  ){
  p <- plot + ggplot2::theme(plot.background = ggplot2::element_rect(fill = "transparent", colour = NA))
  ggplot2::ggsave(path, plot = p, width = w, height = h, units = "in", dpi = dpi, bg="transparent")
}
