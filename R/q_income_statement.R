#' q_income_statement
#'
#' @export

q_income_statement <- function(ticker, freq = c('quarterly','annual')){
 q_income_statement <- function(ticker, freq){
    url <- paste0("https://financialmodelingprep.com/api/v3/financials/income-statement/",stringr::str_to_upper(ticker))

    freq <- freq[[1]]

    if(freq == "quarterly"){
    url <- paste0(url,"?period=quarter")

    }


    fmp_data(url)

  }
      
safe_q_income_statement <- purrr::safely(q_income_statement)
 purrr::map_dfr(ticker,~{
safe_q_income_statement(.x, freq)$result
}) %>% 
   clean_fmp_data()

}

