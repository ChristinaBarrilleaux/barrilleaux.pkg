clean_data <- function(data) {
  clean <- data %>% 
    na.omit(data)
  return(clean)
}

#A general command to easily clean data of choice without the need for %>% and na.omit(). 


