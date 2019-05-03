library(plotly)

mydata <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\flipkart\\flipkart.csv")

mydata <- mydata[order(mydata$number, mydata$model),]
colors <- c('#4AC6B7', '#1972A4', '#965F8A', '#FF7070', '#C61951')

p <- plot_ly(mydata, x = ~rating, y = ~offer_price, z = ~original_price, color = ~model, size = ~price_difference, colors = colors,
             marker = list(symbol = 'circle', sizemode = 'diameter'), sizes = c(5, 150),
             text = ~paste('model:', model, '<br>original_price:', original_price, '<br>rating:', rating,
                           '<br>offer_price:', offer_price)) %>%
  layout(title = 'ratings ',
         scene = list(xaxis = list(title = 'rating',
                                   gridcolor = 'rgb(255, 255, 255)',
                                   range = c(0, 5),
                                   zerolinewidth = 1,
                                   ticklen = 5,
                                   gridwidth = 2),
                      yaxis = list(title = 'offer_price',
                                   gridcolor = 'rgb(255, 255, 255)',
                                   range = c(0, 50000),
                                   zerolinewidth = 1,
                                   ticklen = 5,
                                   gridwith = 2),
                      zaxis = list(title = 'original_price',
                                   gridcolor = 'rgb(255, 255, 255)',
                                   range = c(0,50000),
                                   zerolinewidth = 1,
                                   ticklen = 5,
                                   gridwith = 2)),
         paper_bgcolor = 'rgb(243, 243, 243)',
         plot_bgcolor = 'rgb(243, 243, 243)')


chart_link = api_create(p, filename="scatter3d-project")
