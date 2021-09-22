apa_hist <- function(data, var) {
 data %>% 
    ggplot2::ggplot() +
    ggplot2::aes(x = .data[[var]]) +
    ggplot2::geom_histogram(aes(y = ..density..)) +  
    ggplot2::geom_density(col = "black", size = 1.5) +
    ggplot2::scale_y_continuous(expand = c(0,0)) +
    papaja::theme_apa()
}
