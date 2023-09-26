select.col <- function(data, columns) { 
  clean <- data %>% 
    na.omit(data) %>% 
    select(all_of({{columns}})) %>% 
    return(clean)
}
