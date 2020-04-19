q_splits <- function(ticker){
  q_splits <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/historical-price-full/stock_split/",str_to_upper(ticker))
    
    fmp_data(url) %>% 
      select(-label) %>% 
      clean_fmp_data()
    
    
  }
  
  safe_q_splits <- purrr::safely(q_splits)
  purrr::map_dfr(ticker,~{
    safe_q_splits(.x)$result
  })
}



