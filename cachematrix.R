## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix 
   To avoid repeated computations,the above functions are more beneficial. They can compute and cache the results.
    Here, they compute and cache the inversion of a matrix

## makeCacheMatrix-  The following function creates a matrix x
## Creates a list of functions to -  
## set the matrix
## get the matrix
## set the inverse
## get the inverse      

  makeCacheMatrix <- function(x = matrix()) { 
          inv <- NULL
  set <- function(y) {
    x <<- y    # use `<<-` to assign a value to an object in an environment 
                # different from the current environment.  
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse)inv <<- inverse
  getinverse <- function()m
  list(set = set, get = get,
       setinverse= seinverse,
       getinverse = getinverse)
}
         
                  
## This function computes the inverse of the special "matrix" returned .
## If the matrix has not changed and had already been calculated then  the cachesolve should retrieve the inverse from the cache.
## Here x is output of makeCacheMatrix()
## Matrix is assumed as invertible 
   cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) { # if inverse is calculated
    message("getting cached data") # skips the computation as data is cached
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv                # sets the value of inverse  
}





        
      

