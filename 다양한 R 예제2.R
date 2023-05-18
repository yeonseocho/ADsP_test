head(airquality)
melt(airquality, id=c("Month", "Day"), na.rm=T)
library(melt)
install.packages("melt")
library(melt)

data("mtcars")
a <-mtcars$mpg
b <-mtcars$hp
cov(a,b)
cor(a,b)
cor.test(a,b,method = "pearson")


x <-c(19,23,26,29,30,38,39,46,49)
y <-c(33,51,40,49,50,69,70,64,89)
lm(y~x)
summary(lm(y~x))

library(MASS)
loc <-cmdscale(eurodist)
x <-loc[,1]
y <- -loc[,2]
plot(x,y,type="n", asp=1, main="Metric MDS")
text(x,y,rownames(loc), cex=0.7)
abline(v=0, h=0, lty=2, lwd=0.5)


library(MASS)
data(swiss)
swiss.x <-as.matrix(swiss[, -1])
swiss.dist <-dist(swiss.x)
swiss.mds <-isoMDS(swiss.dist)
plot(swiss.mds$points, type="n")
text(swiss.mds$points, labels=as.character((a:nrow(swiss.x))))
abline(v=0, h=0, lty=2, lwd=0.5)
