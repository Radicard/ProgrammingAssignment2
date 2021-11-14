cacheSolve <- function(x, ...) {
  #Gets inverse of special matrix
  i <- x$getinverse()
  
  #Returns a message if data is already inversed
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  #Retrieves inverse of cached data
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}