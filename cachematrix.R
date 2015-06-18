## makeCacheMatrix retuns list of functions to:
## 1) set matrix
## 2) get matrix
## 3) cache the inverse matrix
## 4) get the cached inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
  invmatrix <-NULL
  
  setmatrix < function(y) {
    matrix <<- y
    invmatrix<<-NULL
  }
  getmatrix <- function() matrix
  setinvmatrix <- function(matrix) invmatrix <<- matrix
  getinvmatrix <- function() invmatrix
  
  list(setmatrix = setmatrix, getmatrix = getmatrix, 
       setinvmatrix = setinvmatrix, getinvmatrix = getinvmatrix)

}


## cacheSolve function returns the inverse matrix for a given matrix.
## If the inverse matrix is cached it returns the cached value.
## if the inverse matrix is NOT cached it generates the inverse matrix and caches it.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invmatrix <- x$getinvmatrix()
  
  if(!is.null(invmatrix)) {
    message("getting cached matrix")
    return(invmatrix)
  }
  
  data <- x$getmatrix()
  invmatrix <- solve(data)
  x$setinvmatrix(invmatrix)
}
