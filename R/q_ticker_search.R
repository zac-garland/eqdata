q_ticker_search <- function(ticker, limit = 10){
 q_ticker_search <- function(ticker, limit = 10){
    url <- paste0("https://financialmodelingprep.com/api/v3/search?query=",str_to_upper(ticker),"&limit=",limit)

    fmp_data(url)

  } 
safe_q_ticker_search <- purrr::safely(q_ticker_search)
 purrr::map_dfr(ticker,~{
safe_q_ticker_search(ticker, limit = 10)$result
})

}

