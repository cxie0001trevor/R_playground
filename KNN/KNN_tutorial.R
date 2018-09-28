wdbc <- read.table(file.choose(), sep = ',')
View(wdbc)
wdbc <- wdbc[,-1]

data_norm <- function(x){ (x-min(x))/(max(x)-min(x)) }

wdbc_norm <- as.data.frame(lapply(wdbc[,-1],data_norm))

summary(wdbc[,2:5])
wdbc_train <- wdbc_norm[1:450,]
wdbc_test <- wdbc_norm[451:569,]

library(class)
# the value of k need to be odd number.
wdbc_pred <- knn(wdbc_train, wdbc_test, wdbc[1:450,1], k=21)

table(wdbc_pred, wdbc[451:569, 1])
