library(plotly)
library(ggplot2)


date_all <- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\croma\\past_croma.csv')
croma <- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\croma\\past_croma.csv')
flipkart <- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\flipkart\\past_flipkart.csv')
snap <- read.csv('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\snapdeal\\past_snapdeal.csv')
x <- c(date_all[1])
croma_price <- c(croma[2])
flipkart_price <- c(flipkart[2])
snapdeal_price <- c(snap[2])


data <- data.frame(x, croma_price, flipkart_price, snapdeal_price)


#The default order will be alphabetized unless specified as below:
data$date <- factor(data$date, levels = data[["date"]])


p <- plot_ly(data, x = ~data$date, y = ~data$mean, type = 'bar', name = 'Croma', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~data$mean.1, name = 'Flipkart', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')%>%
 add_trace(y = ~data$mean.2, name = 'snapdeal', marker = list(color = 'rgb(099,099,099)')) %>%
 layout(xaxis = list(title = "", tickangle = -45),
      yaxis = list(title = ""),
      margin = list(b = 100),
      barmode = 'group')

# Create a shareable link to your chart
# Set up API credentials: https://plot.ly/r/getting-started
chart_link = api_create(p, filename="bar-rotated")
