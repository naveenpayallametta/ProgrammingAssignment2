## Put comments here that give an overall description of what your
## functions do

## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(CacheMatrix) inv <<- CacheMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
  }
  

##`cacheSolve`: This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. 
##If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("Retrieving the cached data")
    return(inv)
  }
  cachedata <- x$get()
  inv <- solve(cachedata)
  x$setInverse(inv)
  inv     
}
