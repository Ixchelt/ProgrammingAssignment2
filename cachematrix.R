## Functions that cache the mean of a vector
## 
## 
## Create a special "vector", which is a list containing
## the function:
## set the value of the vector
## get the value of the vector
## set the value of the mean
## get the value of the mean

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## Calculate the mean of the special "vector" created with the above function. It first checks
## to see if the means has already been calculated. If so, it gets the mean from the cache.

cachemean <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("geting cached data")
                return(m)
        }
       m <- x$get()
       m <- mean(data, ...)
       x$setinverse(m)
       m
}
