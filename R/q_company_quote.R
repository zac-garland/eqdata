q_company_quote <- function(ticker){
 q_company_quote <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/quote/",str_to_upper(ticker))

    jsonlite::fromJSON(url) %>%
      as_tibble()

  }
      
safe_q_company_quote <- purrr::safely(q_company_quote)
 purrr::map_dfr(ticker,~{
safe_q_company_quote(.x)$result
})

}

