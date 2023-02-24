# 요인으로 집단 정의의
v <-c(24,23,52,46,75,25)
w <-c(87,86,92,84,77,68)
f <-factor(c("A", "A", "B", "B","C", "A"))

#벡터를 여러 집단으로 분할(벡터의 길이만 같으면 됨)
groups <-split(v, f)
groups <-split(w,f)
groups <-unstack(data.frame(v,f))

#데이터 프레임을 여러 집단으로 분할
library(MASS)
sp <-split(Cars93$MPG.city, Cars93$Origin)
median(sp[[1]])

#리스트의 각 원소에 함수 적용
#lapply: 결과를 리스트 형태로 반환
## list <-lapply(l, func)
#sapply: 결과를 벡터 또는 행렬로 반환
## vec <-saplly(l, func)

#행렬에 함수 적용
