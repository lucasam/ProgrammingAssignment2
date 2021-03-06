## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #I do not understand exactly why we should empty this variable before
   inverse_matrix <- NULL
   set <- function(y) {
     x <<- y
     inverse_matrix <<- NULL
   }
   get <- function() x
   setInverse <- function(inverse) inverse_matrix <<- inverse
   getInverse <- function() inverse_matrix
   list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_matrix <- x$getInverse()
  if(!is.null(inverse_matrix)) {
    message("getting cached data")
    return(inverse_matrix)
  }
  mtx <- x$get()
  
  inverse_matrix <- solve(mtx, ...)
  
  x$setInverse(inverse_matrix)
  inverse_matrix
}
