## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
  invertm <- NULL
  set <- function(y) {
    x <<- y
    invertm <<- NULL
  }
  get <- function() x
  setinvert <- function(solve) invertm <<- solve
  getinvert <- function() invertm
  list(set = set, get = get,
       setinvert = setinvert,
       getinvert = getinvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  invertm <- x$getinvert()
  if(!is.null(invertm)) {
    message("getting cached data")
    return(invertm)
  }
  # data <- x
  data <- x$get()
  invertm <- solve(data, ...)
  x$setinvert(invertm)
  invertm
}
        ## Return a matrix that is the inverse of 'x'

