#___5 main Data types in R___________

# integers
x <- 5L
typeof(x)
# double
y <- 2.5
typeof(y)

# R by default will store data in double
# To specify the value to be integer mode, 
# you need to explicitly add 'L' as suffix
# Otherwise, R will anticipate that you 
# will need arithmetic operation in futurn
# and store the value in double mode.
# Integer in R, however, are specifically
# for variables that will not have any
# arithmetic operation, for example:
# 1. sequencing(i.e 1st, 2nd, 3rd, ... )
# 2. categories(i.e 1., 2., 3., ... )

# complex
z <- 3 + 2i
typeof(z)
# character
a <- "A"
typeof(a)
# logical
q <- T
typeof(q)
# T for TRUE, F for FALSE

#___Using Variables______________
A <- 10
B <- 5
C <- A + B
# Spacing in R don't matter

var1 <- 2.5
var2 <-4
# Arithmetic operations
var1 + var2
var1 / var2
var1 * var2
var2 ** 2
sqrt(var2)
# Characters concatenation
char1 = 'Hey'
char2 = 'there'
paste(char1, char2)
# Logical operations
a <- 4 < 5
b <- 10 > 100
a == b
a != b
a | b
a & b
isTRUE(b)

#__While loop____
a = 0
b = 5
while(b > a){
  print(a)
  a <- a + 1
}
# to stop endless loop, press 'esc'

#__For loop____
for(i in 1:5){
  print(paste('Hello R', i))
}
# vector
vec1 <- 1:5

#__if-else statement____

# The normal distribution -- rnorm()
# generate a set of numbers which are randomly
# distributed according to the normal distribution
rm(answer) 
x <- rnorm(1)
if(x > 1){
  print(paste(x, "Greater than 1"))
} else if(x >= -1){
    print(paste(x, "Between [-1, 1)"))
} else{
  print(paste(x, "less than 1"))
}
# (nesting)chaining statement
