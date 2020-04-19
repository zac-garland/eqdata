fmp_data <- function(url) {
  df <- jsonlite::fromJSON(url)
  
  symbol <- unique(df[[1]])
  dat <- df[[2]]
  
  dat %>%
    as_tibble() %>%
    add_column(symbol = symbol, .before = 1) %>% 
    janitor::clean_names()
  
  
}

clean_fmp_data <- function(data){
  data %>% 
    mutate(date = lubridate::as_date(date)) %>% 
    mutate_at(vars(3:ncol(.)),list(as.double)) %>% 
    janitor::clean_names()
}

.onAttach <- function(...) {
library(tidyverse)
  
invisible()  
}


