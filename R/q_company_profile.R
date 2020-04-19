q_company_profile <- function(ticker){
 q_company_profile <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/company/profile/",str_to_upper(ticker))

    fmp_data(url)

  }
      
safe_q_company_profile <- purrr::safely(q_company_profile)
 purrr::map_dfr(ticker,~{
safe_q_company_profile(.x)$result
})

}

