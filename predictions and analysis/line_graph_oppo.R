library(plotly)

c <- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\predictions and analysis\\product1\\oppo f11 pro croma1.csv')
a <- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\predictions and analysis\\product1\\oppo fll pro flipkart 1.csv')
b<- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\predictions and analysis\\product1\\oppo fll pro snapdeal1.csv')
date_all <- c[1]
croma <- c[2]
flipkart <- a[2]
snapdeal <- b[2]


data <- data.frame(date_all, croma, flipkart, snapdeal)

p <- plot_ly(data, x = ~data$date, y = ~data$price, name = 'croma', type = 'scatter',mode = 'lines+markers') %>%
  add_trace(y = ~data$price.1, name = 'flipkart', mode = 'lines+markers') %>%
  add_trace(y = ~data$price.2, name = 'snapdeal', mode = 'lines+markers')

chart_link = api_create(p, filename="line-mode12")
