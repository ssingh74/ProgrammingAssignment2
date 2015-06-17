## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  getmatrix <- function() x
  
  setinvmatrix <- function() invmatrix <<- invmatrix
  
  getinvmatrix <- function() invmatrix
  list(getinvmatrix = getinvmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invmatrix <- x$getinvmatrix()
  
  if(!is.null(getinvmatrix)) {
    message("getting cached matrix")
    return(getinvmatrix)
  }
  
  data <- x$getmatrix()
  invmatrix <-solve(data)
  x$setinvmatrix(invmatrix)
}
