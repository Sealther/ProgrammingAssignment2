makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize inverse as NULL
  
  # Set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Reset the inverse when the matrix is updated
  }
  
  # Get the matrix
  get <- function() x
  
  # Set the inverse of the matrix
  setInverse <- function(inverse) inv <<- inverse
  
  # Get the inverse of the matrix
  getInverse <- function() inv
  
  # Return a list of functions to interact with the matrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
