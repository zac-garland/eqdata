#' q_company_quote
#'
#' @export

q_company_quote <- function(ticker){
 q_company_quote <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/quote/",stringr::str_to_upper(ticker))

    jsonlite::fromJSON(url) %>%
      dplyr::as_tibble() %>% 
      janitor::clean_names()

  }
      
safe_q_company_quote <- purrr::safely(q_company_quote)
 purrr::map_dfr(ticker,~{
safe_q_company_quote(.x)$result
})

}

