x <- 1

if (x == 1){
  print("X is equal to one!")
}

if ( (x %% 2) == 0 ){
  print("X is even")
} else {
  print("X is Not even")
}

if (is.matrix(x) == TRUE){
  print("X is a Matrix")
} else {
  print("X is NOT a Matrix")
}

x <- c(3,7,1)

one   <- x[1]
two   <- x[2]
three <- x[3]

print(one)
print(two)
print(three)

x <- c(20, 10, 1)

one   <- x[1]
two   <- x[2]
three <- x[3]

max <- 0
if(one > max){
  max <- one
}
if(two > max){
  max <- two
}
if(three > max){
  max <- three
}

library(stringr)

print(str_c("Max number is: ", max))


print(cat("Max number is: ", max))
cat("Max number is: ", max)
#cat("It can't be done with numbers like: ", max)









