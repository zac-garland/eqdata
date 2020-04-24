#' q_financial_ratios
#'
#' @export

q_financial_ratios <- function(ticker){
 q_financial_ratios <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/financial-ratios/",stringr::str_to_upper(ticker))

    df <- jsonlite::fromJSON(url)

    symbol <- df[[1]]
    dates <- df[[2]][[1]]

    dat <- df[[2]][-1] %>%
    purrr::imap_dfr(~{
      .x %>%
        dplyr::as_tibble() %>%
        tibble::add_column(date = dates) %>%
        tidyr::gather(indicator,value,-date) %>%
        tibble::add_column(category = .y,.before = 1) %>% 
        dplyr::mutate_at(dplyr::vars(category,indicator),list(snakecase::to_snake_case))


    })

  dat %>%
    tibble::as_tibble() %>%
    tibble::add_column(symbol = symbol, .before = 1)


  }
      
safe_q_financial_ratios <- purrr::safely(q_financial_ratios)
 purrr::map_dfr(ticker,~{
safe_q_financial_ratios(.x)$result
}) %>% 
   dplyr::mutate(date = as.Date(date),
          value = as.double(value)) %>% 
   dplyr::arrange(category,indicator,date)

}

