## Attempting to keep head above water by writing two functions 
## that return a cache'd inverse matrix or a new inversed matrix 
## where object not created yet

## This is a parroting of the mean cache function that i do not comprehend

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(
                set = set
                ,get = get
                ,setInverse = setInverse
                ,getInverse = getInverse
        )
}


## This is an extension of the serious trouble i am in 
## based on above function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return (m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setInverse(m)
        m
}



