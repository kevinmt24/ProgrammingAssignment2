## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
     x <<- y
     inv <<- NULL
  }
  get <- function() {x}  ##Getting the matrix itself
  setInverse <- function(inverse) {inv <<- inverse} ##Change the value to inverse
  getInverse <- function() {inv}  ##get the inverse value
  list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
  }
