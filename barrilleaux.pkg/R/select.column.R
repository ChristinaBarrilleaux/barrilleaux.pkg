

remove_na <- function(data, columns) { 
  clean <- data %>% 
    na.omit(data) %>% 
    select(all_of({{columns}})) %>% 
    mutate(new_col = {{column}}/1000)
  return(clean)
}