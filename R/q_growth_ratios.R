#' q_growth_ratios
#'
#' @export

q_growth_ratios <- function(ticker, freq = c('quarterly','annual')){
 q_growth_ratios <- function(ticker, freq){
    url <- paste0("https://financialmodelingprep.com/api/v3/financial-statement-growth/",stringr::str_to_upper(ticker))

    freq <- freq[[1]]

    if(freq == "quarterly"){
    url <- paste0(url,"?period=quarter")

    }


    fmp_data(url)

  }
      
safe_q_growth_ratios <- purrr::safely(q_growth_ratios)
 purrr::map_dfr(ticker,~{
safe_q_growth_ratios(.x, freq)$result
}) %>% 
   clean_fmp_data()

}

