## Functions that cache the inverse of a matrix
## 
## 
## Create a special "matrix", which is a list containing
## a function to:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse matrix
## get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) m <<- inv
        getinverse <- function() i
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## Calculate the inverse of the special "matrix" created with the above function. It first checks
## to see if the inverse has already been calculated. If so, it gets the inverse from the cache.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("geting cached data")
                return(i)
        }
       m <- x$get()
       i <- solve(m, ...)
       x$setinverse(i)
       i
}
