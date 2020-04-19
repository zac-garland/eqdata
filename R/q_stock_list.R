#' q_stock_list
#'
#' @export

q_stock_list <- function(){
    url <- paste0("https://financialmodelingprep.com/api/v3/company/stock/list")

    jsonlite::fromJSON(url)[[1]] %>%
      as_tibble()

  }
     
