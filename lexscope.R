## Caching the Inverse of a Matrix
## functions makeMatrix
## <<- operator which can be used to assign a value to an object in an 
## environment that is different from the current environment.

makeMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
        x <<- y
        m <<- NULL
        }
        get <- function() x
        setinverse <- function(mat) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}
## The following function calculates the Matrix inverse from cache
cacheSolve <- function(x, ...) {
m <- x$getinverse()
if(!is.null(m)) {
      message("getting cached data")
      return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}