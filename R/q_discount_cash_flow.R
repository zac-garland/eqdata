#' q_discount_cash_flow
#'
#' @export

q_discount_cash_flow <- function(ticker, freq = c('quarterly','annual')){
 q_discount_cash_flow <- function(ticker, freq){
    url <- paste0("https://financialmodelingprep.com/api/v3/company/historical-discounted-cash-flow/",str_to_upper(ticker))

    freq <- freq[[1]]

    if(freq == "quarterly"){
    url <- paste0(url,"?period=quarter")

    }


    fmp_data(url)

  }
      
safe_q_discount_cash_flow <- purrr::safely(q_discount_cash_flow)
 purrr::map_dfr(ticker,~{
safe_q_discount_cash_flow(.x, freq)$result
}) %>% 
   clean_fmp_data()

}

