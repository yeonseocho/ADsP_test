require(ggplot2)
data(diamonds)
dia.data <-diamonds
head(dia.data)
summary(dia.data)

#plineplot()
library(klaR)
install.packages("klaR")
iris2 <-iris[,c(1,3,5)]
plineplot(Species~., data=iris2, method="lda", x=iris[ ,4], xlab="Petal.Width")

 