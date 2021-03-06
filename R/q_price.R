#' q_price
#'
#' @export

q_price <- function(ticker){
  q_price <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/historical-price-full/",stringr::str_to_upper(ticker))

  fmp_data(url) %>% 
    dplyr::select(-label) %>% 
    clean_fmp_data()
    
    
  }
  
  safe_q_price <- purrr::safely(q_price)
  purrr::map_dfr(ticker,~{
    safe_q_price(.x)$result
  })
}
