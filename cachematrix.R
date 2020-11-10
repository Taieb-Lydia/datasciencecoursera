makeCacheMatrix <- function(x = matrix()) {
  # Assign the inverse a NULL value
  z <- NULL
  
  # Set the matrix
  set <- function(y){
    x <<- y
    z <-- NULL
  }
  
  # Get the matrix
  get <- function(){
    x
  }
  
  # Set the inverse of the matrix
  setinverse <- function(inverse){
    z <<- inverse
  }
  
  # Get the inverse of the matrix
  getinverse <- function(){
    z
  }
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z <- x$getinverse()
  
  # Return the inverse if cached
  if (!is.null(z)){
    message("Inverse Cached Data")
    return(z)
  }
  
  # Get matrix
  data <- x$get()
  
  # Compute inverse
  z <- solve(data, ...)
  
  # Set inverse 
  x$setinverse(z)
  z  
}
