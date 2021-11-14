makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  #1. Setting the matrix value
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  #Getting the matrix value
  get <- function() x
  
  #Setting the inverse value
  setinverse <- function(inverse) i <<- inverse
  
  #Getting the inverse value
  getinverse <- function() i
  
  #Displaying values as a list
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}