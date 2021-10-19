#' Generalization of QQplot with depth measures
#'
#' @param x First dataframe
#' @param y Second dataframe
#' @param colorx HEX color of points from first dataframe (Default = \code{"#e8e7e3"})
#' @param colory HEX color of points from second dataframe (or just \code{TRUE} for defaults)
#' @param method One of the available depth functions (Default = \code{"Tukey"})
#' @return ggplot
#' @export
#' @examples
#' ddplot(df.1, df.2, colory = "#ff0000")
ddplot <- function(
  x, y,
  colorx = "#e8e7e3",
  colory,
  method = "Tukey"
) {
  u <- rbind(x,y)
  if (method %in% c("Tukey", "Mahalanobis", "Projection", "Euclidean")) {
    xcoords <- DepthProc::depth(u, x, method = method)
    xcoords <- xcoords@.Data
    ycoords <- DepthProc::depth(u, y, method = method)
    ycoords <- ycoords@.Data
  }
  if (method == "Liu") {
    xcoords <- deeper::depth_liu(u,x)
    ycoords <- deeper::depth_liu(u,y)
  }

  df           <- data.frame(xcoords,ycoords)
  colnames(df) <- c("D.1", "D.2")
  df$dist                    <- "1"
  df[nrow(x)+1:nrow(y),3]    <- "2"

  if (!missing(colory)) {
    if (colory == TRUE) {
      return_plot <- ggplot2::ggplot(data=df, aes(x=D.1, y=D.2, color=dist)) +
        ggplot2::geom_point(show.legend = FALSE) +
        ggplot2::geom_abline(slope = 1) +
        ggplot2::scale_color_manual(
          values = c("1" = colorx, "2" = "#d5bd5e")
        )
    } else {
      return_plot <- ggplot2::ggplot(data=df, aes(x=D.1, y=D.2, color=dist)) +
        ggplot2::geom_point(show.legend = FALSE) +
        ggplot2::geom_abline(slope = 1) +
        ggplot2::scale_color_manual(
          values = c("1" = colorx, "2" = colory)
        )
    }
  } else {
    return_plot <- ggplot2::ggplot(data=df, aes(x=D.1, y=D.2)) +
      ggplot2::geom_point() +
      ggplot2::geom_abline(slope = 1)
  }
  return_plot <- return_plot
}
