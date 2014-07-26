## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) inv <<- solve
  getsolve <- function() inv
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

cacheSolve <- function(x,...){
  inv <-$getsolve()
  if (!is.null(s)){
    message(`getting cached data`)
    return(s)
    data <- x$get()
    s <- solve(data,...)
    x$setsolve(s)
    s
  }
  
  
}
