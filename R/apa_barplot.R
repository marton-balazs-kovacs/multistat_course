apa_barplot <- function(data, var) {
  data %>% 
    dplyr::count(.data[[var]]) %>% 
    dplyr::ungroup() %>% 
    dplyr::mutate(N = sum(n),
                  prop = round(n / N * 100, 2)) %>% 
    dplyr::arrange(n) %>% 
    ggplot2::ggplot() +
    ggplot2::aes(x = .data[[var]], y = prop) +
    ggplot2::geom_bar(stat = "identity") +
    ggplot2::scale_y_continuous(expand = c(0,0)) +
    ggplot2::coord_flip() +
    papaja::theme_apa()
}
