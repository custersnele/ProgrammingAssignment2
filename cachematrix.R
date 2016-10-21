## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setinverse <- function(result) inverseMatrix <<- result
  getinverse <- function() inverseMatrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrixinverse <- x$getinverse()
  if(!is.null(matrixinverse)) {
    message("getting cached matrix inverse")
    matrixinverse
    return(matrixinverse)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
