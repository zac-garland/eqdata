#' q_balance_sheet
#'
#' @export

q_balance_sheet <- function(ticker, freq = c('quarterly','annual')){
 q_balance_sheet <- function(ticker, freq){
    url <- paste0("https://financialmodelingprep.com/api/v3/financials/balance-sheet-statement/",stringr::str_to_upper(ticker))

    freq <- freq[[1]]

    if(freq == "quarterly"){
    url <- paste0(url,"?period=quarter")

    }


    fmp_data(url)

  }
      
safe_q_balance_sheet <- purrr::safely(q_balance_sheet)
 purrr::map_dfr(ticker,~{
safe_q_balance_sheet(.x, freq)$result
}) %>% 
   clean_fmp_data()

}

