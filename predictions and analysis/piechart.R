library(plotly)
library(dplyr)
library(sqldf)

#rating
mydata1 <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\croma\\croma.csv")
r1 <- sqldf('select rating from mydata1')
rr1 <- sum(r1)
mydata2 <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\flipkart\\flipkart.csv")
r2 <- sqldf('select rating from mydata2')
rr2 <- sum(r2)
mydata3 <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\snapdeal\\snapdeal.csv")
r3 <- sqldf('select rating from mydata3')
rr3 <- sum(r3)

#offer price

p1 <- sqldf('select price_difference from mydata1')
pp1 <- sum(p1)
p2 <- sqldf('select price_difference from mydata2')
pp2 <- sum(p2)
p3 <- sqldf('select price_difference from mydata3')
pp3 <- sum(p3)

rating <- c(rr1,rr2,rr3)
pri<- c(pp1,pp2,pp3)
sites <- c('croma', 'flipkart', 'snapdeal')
r <- data.frame(rating, pri, sites)

p <- plot_ly() %>%
  add_pie(data = count(r, rating), labels = ~sites, values = ~rating,
          name = "rating", domain = list(x = c(0, 0.4), y = c(0.4, 1))) %>%
  add_pie(data = count(r, pri), labels = ~sites, values = ~pri,
          name = "Price difference", domain = list(x = c(0.6, 1), y = c(0.4, 1))) %>%
  layout(title = "", showlegend = F,
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

# Create a shareable link to your chart
# Set up API credentials: https://plot.ly/r/getting-started
chart_link = api_create(p, filename="pie-project")


