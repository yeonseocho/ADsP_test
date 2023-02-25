data("mtcars")
a <-mtcars$mpg
b <-mtcars$hp
cor(a,b)
cov(a,b)
cor.test(a,b,method="pearson")
# 회귀계수
# 10년간 에어컨 예약대수와 판매대수
x <-c(19,23,26,29,30,38,39,46,49)
y <-c(33,51,40,49,50,69,70,64,89)
lm(y~x)
lm(formula = y~x)
summary(lm(y~x))

#MASS 패키지
library(MASS)
head(Cars93)
attach(Cars93)
lm(Price~EngineSize+RPM+Weight, data=Cars93)
summary(lm(Price~EngineSize+RPM+Weight, data=Cars93))

#림프절이 전립선 암에 대해 양성인지 여부를 예측하는 데이터
library(boot)
data("nodal")
a <-c(2,4,6,7)
data <-nodal[,a]
glmModel <-glm(r~., data=data, family = "binomial")
summary(glmModel)

#최적회귀방정식
#df생성
x1 <-c(7,1,11,11,7,11,3,1,2,21,1,11,10)
x2 <-c(26,29,56,31,52,55,71,31,54,47,40,66,68)
x3 <-c(6,15,8,8,6,9,17,22,18,4,23,9,8)
x4 <-c(60,52,20,47,33,22,6,44,22,26,34,12,12)
y <-c(78.5,74.3,104.3,87.6,95.9,109.2,102.7,72.5,93.1,115.9,83.8,113.3,109.4)
df <-data.frame(x1,x2,x3,x4,y)
head(df)
a <-lm(y~x1+x2+x3+x4, data=df)
summary(a)

#유의확률이 가장 높은 변수를 제거하고 다시 회귀모형을 생성-x3제거
b <-lm(y~x1+x2+x4, data=df)
summary(b)

#유의확률이 가장 높은 변수를 제거하고 다시 회귀모형을 생성-x4제거
c <-lm(y~x1+x2, data=df)
summary(c)

#변수 선택법(별점화 전진선택법)
step(lm(y~1, data=df), scope=list(lower=~1, upper=~x1+x2+x3+x4), direction="forward")

#변수 선택법(별점화 후진제거법)
library("ElemStatLearn")
install.packages("ElemStatLearn")
Data=prostate
data.use=Data[, -ncol(Data)]
lm.full.Model=lm(lpsa~., data=data.use)
backward.aic=step(lm.full.Model, lpsa~1, direction="backward")
