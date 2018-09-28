#Law of large number
# Example of tossing coin
head <- 0
tail <- 0
total <- 10000
for(i in 1:total){
  toss <- rnorm(1)
  if(toss>0){
    head <- head + 1
  }
  else{
    tail <- tail + 1
  }
}
print(paste('head: ', head/total))
print(paste('tail: ', tail/total))
 
# from -segma to segma
N <- 10000000
total <- 0
for (i in rnorm(N)){
  if(-1 <=i & i <= 1){
    total <- total + 1
  }
}
print(total/N)


















