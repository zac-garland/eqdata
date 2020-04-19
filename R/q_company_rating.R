#' q_company_rating
#'
#' @export

q_company_rating <- function(ticker){
 q_company_rating <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/company/rating/",str_to_upper(ticker))

    fmp_data(url)

  }
      
safe_q_company_rating <- purrr::safely(q_company_rating)
 purrr::map_dfr(ticker,~{
safe_q_company_rating(.x)$result
})

}

