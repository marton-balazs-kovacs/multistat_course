#' the function expects already transformed variables
#' source from: https://www.r-graph-gallery.com/44-polynomial-curve-fitting.html and https://www.datatechnotes.com/2018/02/polynomial-regression-curve-fitting-in-r.html
poly_plot <- function(data, x, y) {
  data %>% 
    ggplot() +
    aes(
      .data[[x]],
      .data[[y]]) +
    geom_point() + 
    geom_smooth(
      method = "lm",
      formula = y ~ x)
}
