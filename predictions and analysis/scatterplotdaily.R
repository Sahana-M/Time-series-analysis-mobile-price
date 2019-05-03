library(plotly)
library(ggplot2)
mydata <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\flipkart\\flipkart.csv")



p <- plot_ly(
  mydata, x = ~original_price, y = ~offer_price,
  color = ~number, size = ~rating, text = ~paste('model:', model, '<br>rating:', rating)
)


chart_link = api_create(p, filename="scatter price and rating1")