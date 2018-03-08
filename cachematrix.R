## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL  
  #method to set matrix
  set <- function(y) {
    x <<- y                     
    m <<- NULL                  
  }
  #define function 
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  #get inverse
  getinverse <- function() m 
  #list of four values
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #get matrix 
  m <- x$getinverse()
  #return inverse if set
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #get matrix from object
  data <- x$get()
  #calculate inverse
  m <- solve(data, ...)
  #set inverse
  x$setinverse(m)
  #return result
  m
}
