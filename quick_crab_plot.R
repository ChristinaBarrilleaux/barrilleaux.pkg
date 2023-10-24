crab_plot <- function(data, column, column1){
  plot <- data %>%
    na.omit(data) %>%
    select({{column}}, {{column1}}) %>% 
    ggplot(aes(x = {{column}}, y = {{column1}})) + geom_point()
  return(plot)
}

#A plot function for when simple data comparisons and visualizations are needed.