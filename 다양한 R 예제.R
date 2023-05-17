z=c(1:3, NA)
is.na(z)
z <-c(1:3, NA)
is.na(z)
z=c(1:3, NA)
z==NA
3==5
3=5
3==5
z==NA
a<-c(a,4)
a
b<-c(a,4)
b
d<-seq(10,100,10)/10
d
a<-seq(1,10,1)
a
c<-1:10
c
b<-c(1,10)
c(2,4,6,8,)+c(1,3,5,7,9)
"+"(2,3)

y=c(1,2,3,NA)
s<-c("Monday", "Tuesday", "Wednesday")
substr(s,1,2)

x<-c(1:5)
y<-seq(10,50,10)
xy<-rbind(x,y)
xy

mx=matrix(c(1,2,3,4,5,6), ncol=2, byrow=T)
mx

A <-cbind(c(1,2,3), c(4,5,6), c(7,8,9))
A
colnames(A) <-c("A", "B", "C")
rownames(A) <-c("r1", "r2", "r3")
A

f <-function(x,a) return ((x-a)^2)
f(1:2, 3)
f
x <-1:100
x
sum(x>50)
