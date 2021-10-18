bray_save <- function(
  path,
  plot,
  w = 5,
  h = 5,
  dpi = 300
  ){
  ggplot2::ggsave(path, plot = plot, width = w, height = h, units = "in", dpi = dpi, bg="transparent")
}
