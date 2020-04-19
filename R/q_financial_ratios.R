q_financial_ratios <- function(ticker){
 q_financial_ratios <- function(ticker){
    url <- paste0("https://financialmodelingprep.com/api/v3/financial-ratios/",str_to_upper(ticker))

    df <- jsonlite::fromJSON(url)

    symbol <- df[[1]]
    dates <- df[[2]][[1]]

    dat <- df[[2]][-1] %>%
    purrr::imap_dfr(~{
      .x %>%
        as_tibble() %>%
        add_column(date = dates) %>%
        gather(indicator,value,-date) %>%
        add_column(category = .y,.before = 1)


    })

  dat %>%
    as_tibble() %>%
    add_column(symbol = symbol, .before = 1)


  }
      
safe_q_financial_ratios <- purrr::safely(q_financial_ratios)
 purrr::map_dfr(ticker,~{
safe_q_financial_ratios(.x)$result
}) %>% 
   mutate(date = lubridate::as_date(date),
          value = as.double(value))

}

