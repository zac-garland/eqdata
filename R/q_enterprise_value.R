q_enterprise_value <- function(ticker, freq = c('quarterly','annual')){
 q_enterprise_value <- function(ticker, freq){
    url <- paste0("https://financialmodelingprep.com/api/v3/enterprise-value/",str_to_upper(ticker))

    freq <- freq[[1]]

    if(freq == "quarterly"){
    url <- paste0(url,"?period=quarter")

    }


    fmp_data(url)

  }
      
safe_q_enterprise_value <- purrr::safely(q_enterprise_value)
 purrr::map_dfr(ticker,~{
safe_q_enterprise_value(.x, freq)$result
}) %>% 
   clean_fmp_data()

}

