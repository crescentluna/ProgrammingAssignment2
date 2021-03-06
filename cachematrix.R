## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix return a list of the following functions:
## set,get,setInverseMatrix,getInverseMatrix
makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    set <- function(y){
        x <<- y  ## remeber to use <<- 
        inverse_x  <<- NULL
    }
    get <- function() x
    setInverseMatrix <- function(inverse_y) inverse_x  <<- inverse_y
    getInverseMatrix <- function() inverse_x
    list(set=set,get=get,
         setInverseMatrix=setInverseMatrix,
         getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function
## if(intverse matrix of x is not NULL){ return it}
## else { cache the inverse matrix }
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse_x <- x$getInverseMatrix()
    if(!is.null(inverse_x)){
        message("getting cached data")
        return(inverse_x)
    }
    data <- x$get()
    inverse_x  <- solve(data)
    x$setInverseMatrix(inverse_x)  # cache the inverse matrix
    inverse_x
}
