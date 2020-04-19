#' q_key_ratios
#'
#' @export

q_key_ratios <- function(ticker, freq = c('quarterly','annual')){
 q_key_ratios <- function(ticker, freq){
    url <- paste0("https://financialmodelingprep.com/api/v3/company-key-metrics/",str_to_upper(ticker))

    freq <- freq[[1]]

    if(freq == "quarterly"){
    url <- paste0(url,"?period=quarter")

    }


    fmp_data(url)

  }
      
safe_q_key_ratios <- purrr::safely(q_key_ratios)
 purrr::map_dfr(ticker,~{
safe_q_key_ratios(.x, freq)$result
}) %>% 
   clean_fmp_data()

}

