head(airquality)
library(reshape)
melt(airquality, id=c("Month", "Day"), na.rm=T)

#sqldf: R에서 sql의 명령어를 사용 가능하게 해주는 패키지
library(sqldf)
sqldf("select * from iris")

#plyr: apply 함수에 기반해 데이터와 출력변수를 동시에 배열로 치환하여 처리하는 패키지
library(plyr)

#data.table
install.packages("data.tables")
library(data.table)
DF <-data.frame(x=runif(2.6e+07), y=rep(LETTERS, each=10000))
df <-data.frame(x=runif(2.6e+07), y=rep(letters, each=10000))
system.time(x <-DF[DF$y=="C", ])
DT <-as.data.table(DF)
setkey(DT, y)
system.time(x <-DT[J("C"), ])
