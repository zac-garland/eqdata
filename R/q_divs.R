q_divs <- function(ticker){
  q_divs <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/historical-price-full/stock_dividend/",str_to_upper(ticker))
    
    fmp_data(url) %>% 
      select(-label) %>% 
      clean_fmp_data()
    
    
  }
  
  safe_q_divs <- purrr::safely(q_divs)
  purrr::map_dfr(ticker,~{
    safe_q_divs(.x)$result
  })
}



