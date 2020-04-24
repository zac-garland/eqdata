#' q_intraday
#'
#' @export

q_intraday <- function(ticker, freq = c('1min','5min','15min','30min','1hour')){
  q_intraday <- function(ticker, freq){
    freq <- freq[[1]]
    
    url <- paste0("https://financialmodelingprep.com/api/v3/historical-chart/",freq,"/",stringr::str_to_upper(ticker))
    
    
    
    jsonlite::fromJSON(url) %>% 
      dplyr::as_tibble() %>% 
      dplyr::mutate(date = lubridate::as_datetime(date)) %>% 
      tibble::add_column(symbol = ticker,.before = 1) %>% 
      dplyr::arrange(symbol,date)
    
    
  }
  
  safe_q_intraday <- purrr::safely(q_intraday)
  purrr::map_dfr(ticker,~{
    safe_q_intraday(.x, freq)$result
  })
}


