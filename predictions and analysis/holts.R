library(forecast)

#croma
mydata1 <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\predictions and analysis\\product1\\vivo v11 croma.csv")
d1 <- mydata1[2]
mod1 <- HoltWinters(d1, alpha=0.1, beta=FALSE, gamma=FALSE)



#flipkart
mydata2 <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\predictions and analysis\\product1\\vivo v11 flip.csv")
d2 <- mydata2[2]
mod2 <- HoltWinters(d2, alpha=0.1, beta=FALSE, gamma=FALSE)


#snapdeal
mydata3 <- read.csv("C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\predictions and analysis\\product1\\vivo v11 snap.csv")
d3 <- mydata3[2]
mod3 <- HoltWinters(d3, alpha=0.1, beta=FALSE, gamma=FALSE)

forecast(mod1, 1)
forecast(mod2, 1)
forecast(mod3, 1)

