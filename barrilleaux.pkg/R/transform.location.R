#'Function to mutate the location from numeric to character
#'
#'Use this function to create a new column for the Latitude character and not numeric data. 
#'This function will not delete the location from the data set, but it will select all the columns except the numeric latitude.
#'@param data the data set crabs
#'@param column Column Latitude 
#'@return  New column with Latitude as a character 
#'
#'@export

latitude_chr <- function(data, column) {
  location <- data %>% 
    mutate(latitude_chr = as.character({{column}})) %>% 
    select(-Latitude)
  return(location)
}