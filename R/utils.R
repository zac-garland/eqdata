#' re-export magrittr pipe operator
#'
#' @importFrom magrittr %>%
#' @name %>%
#' @rdname pipe
#' @export
NULL


fmp_data <- function(url) {
  df <- jsonlite::fromJSON(url)
  
  symbol <- unique(df[[1]])
  dat <- df[[2]]
  
  dat %>%
    dplyr::as_tibble() %>%
    tibble::add_column(symbol = symbol, .before = 1) %>% 
    janitor::clean_names()
  
  
}

clean_fmp_data <- function(data){
  data %>% 
    dplyr::mutate(date = as.Date(date)) %>% 
    dplyr::mutate_at(dplyr::vars(3:ncol(.)),list(as.double)) %>% 
    janitor::clean_names() %>% 
    dplyr::arrange(symbol,date)
}

.onAttach <- function(...) {

  # library(dplyr)

}


