greeting <- function(name="Dusty"){
  print(paste0("Hello there ", name))
}

greeting()
greeting('David')


greeting2 <- function(name="Dusty"){
  paste0("Hello there ", name)
}

message <- greeting2('Aiko')
print(message)


prod <- function(num1, num2){
  return(num1 * num2)
}

print(prod(10, 20))


num_check <- function(integer, vector){
  included <- FALSE
  
  for(num in vector){
    if (integer == num){
      included <- TRUE
    }
  }
  
  return(included)
}

print(num_check(2,c(1,2,3)))
print(num_check(2,c(1,4,5)))




num_count <- function(integer, vector){
  count = 0
  
  for(number in vector){
    if (number == integer){
      count <- count +1
    }
  }
  
  return(count)  
}


print(num_count(2,c(1,1,2,2,3,3)))
print(num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3)))




