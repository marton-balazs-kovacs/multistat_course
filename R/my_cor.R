my_cor <- function(data, x, y, method) {
  cor.test(data[[x]], data[[y]], method = method)
}