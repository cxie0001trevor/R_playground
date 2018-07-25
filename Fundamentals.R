#---------------------------------------------

# What is vector?
# def: a sequence of data elements of 
#     the same basic type
# • The indexation starts from 1.
# • Everything in R is a vector

#---------------------------------------------
# 1. Using vector(mode, length) to create empty vector
vector("numeric",4)
typeof(vector("numeric",4))
# By default "numeric" means double
# "character": "", "", "", ""
# "logical": FALSE, FALSE, FALSE, FALSE
# "complex": 0+0i, 0+0i, 0+0i, 0+0i

# 2. Using c() function(concatenation)
# Combine values into a vector or list
# Example:
# 1. Numeric vector: (num) 
#index:  1    2    3   4    5   6
#      | 54 | 27 | 6 | 11 | 3 | 31 |
v1 <- c(54,27,6,11,3,31)
is.numeric(v1)
is.integer(v1)
is.double(v1)
typeof(v1)
# R by default store numeric value as double 

# 2. Character vector: (chr) 
v2 <- c('a','b','c')

# 3. Logical vector (logi)
v3 <- c(T,F,T,T,F)

# As element inside a vector must be the same type:
# 1. Numeric will be converted to char
v4 <- c(1, 2, 'b')

# 2. Logical value will be converted to numeric.
#    As T(TRUE) for 1, F(FALSE) for 0.
v5 <- c(2,T,4,F)

# Also, logical value become character,
# As T for 'TRUE', F for 'FALSE':
v6 <- c(T,'A',F,'B')

# Sequence, like ':'
a <- seq(1,15) 
# provides a step to specify
seq(0,10,2)
# parameter 'by' actually is (to-from)/(length.out-1) 
seq(0,10, length.out=8)
x <- c('a','b','c')
seq(0,10, along.with=x)
seq_len(10)
seq_along(x)
b <- 1:15
# The distint point between these two is that
# as the input is numeric, seq() produces
# an vector of double, while ':' produces a
# vector of integers

# Replicate, default input are (vector, time)
rep(1,3)
rep('a',5)
rep(v2,3)
# Or, specify what times will each element inside
# vector to repeat:
rep(c('a','b','c'), each=3)
#---------------------------------------------

# Using the [ ] brackets
# works as retrieve element(s) by index
# Note: indexing starts from 1.
v <- 1:10
v[2]
#
v[12]
# -1 means to exclude the index 1 element:
v[-1]
v[-3]
# Also, it can retrieve from index 1 to 3:
v[1:3]
# Or, explicitly specify which element by 
# another vector:
v[c(1,3,5)]
# • Note: 
# R is a vector-driven language, seldomly
# will need indexing to retrieve element.
x <- c(1,2,3,4)
y <- x[-length(x)]

#---------------------------------------------

# Vectorized Operation
v1 <- c(seq(1,9))
v2 <- c(seq(9,1,-1))
v3 <- c(1,2,3,4,5)
# 1. Arithmetic
# • Note: two vector need to have same length
v1 + v2
v1 - v2
# 2. logical operation
v1 > v2
v1 == v2
# if long one is not a multiple of short one,
# the addition will not be performed.
v3 + v1
v3 <- c(1,2,3)
# if the long one is, it will perform Recycling
# of vectors:
#    1  2  3  <-- recycle the short one
#    1  2  3  4  5  6  7  9 10
# Copy and paste until both length are equal 
#    1  2  3 | 1  2  3 | 1  2  3
#    1  2  3   4  5  6   7  9 10
# => 2  4  6  5  7  9  8 10 12

#---------------------------------------------
a <- c(seq(1,10))
b <- c(seq(20,2,-2))
# Vectorized approach
c <- a * b
# De-vectorized approach
d <- rep(NA, 10)
for (i in 1:10){
  d[i] <- a[i] * b[i]
}
# >>> What's difference? <<<
# Though both got the same result, but vectorized
# approach has 3 main advantages over the de-
# vectorized approach:
# 1. Vectorized is short, while its counterpart
#    is cumbersome. (time-saving)
# 2. As a vector is defined as all elements
#    inside must be the same type, which for R 
#    only need check once, while by De-vectorized 
#    approach it has to be verified at each time 
#    in every loop. (take less time to execute)
# > Note:
# • YOU CAN TEST that with rnorm() function by 
#   increasing the size of the data set.
# • EXPLANATION:
# The Main Reason is that R is high-level programming
# language that delegate calculation to C or Fortan 
# like language to do in the background.

#---------------------------------------------

qplot(data=diamonds, carat, price,
      colour=clarity, facets=.~clarity)



