# A. Concatenation
# integer concatenation
one <- 1
two <- 2
three <- 3
word1 <- "Apple"
word2 <- "Banana"
word3 <- "Cactus"
# store them in an unsorted list
mylist <- list(as.integer(one), word1, as.integer(two), word2, as.integer(three), word3)

# B. Seperate out the int and strings into vectors
# init empty vectors to store int and string
vecint <-c()
vecstr <-c()
# run a loop thru the list to sort
for(i in mylist){
  # seperate out the integer from the string
  if(is.integer(i)) {
    vecint <- c(vecint, i)
  } else {
    vecstr <-c(vecstr, i)
  }
}
# display the success
vecint
vecstr

# C. Create a function that computes Fibonacci
fibonacci <- function(n) {
  # init the fibonacci sequence as a vector
  vecfib <- c(0, 1)
  sum <- 1
  # init a counter set to 1
  i <- 0
  # compute the Fib sequence
  while(length(vecfib) < n) {
    # algorithm for the fibonacci number
    sum <- vecfib[i] + vecfib[i+1]
    vecfib <- c(vecfib, sum)
    i = i + 1
  }
return(vecfib)
}
# promt the user
num <- readline("How many values do you want from the fibonacci sequence? ") 
# fibonacci function call
fb <- fibonacci(as.integer(num))
# print result
print(fb)
