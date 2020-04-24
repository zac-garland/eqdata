#' q_all_stock_price
#'
#' @export

q_all_stock_price <- function(){
    url <- paste0("https://financialmodelingprep.com/api/v3/stock/real-time-price")

    jsonlite::fromJSON(url)[[1]] %>%
      dplyr::as_tibble()

  }
     
