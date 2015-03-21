## set the value of a matrix
## get the value of the matrix
## set the value of the matrix's inverse	
## get the value of the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL					
	set <- function(y) {		
		x <<- y					
		m <<- NULL				
	}
	get <- function() x	
	setsolve <- function(solve) m <<- solve	
	getsolve <- function() m	
	list(set = set, get = get,		
		setsolve = setsolve,
		getsolve = getsolve)
}

#Calculates the inverse of the matrix created with the above function, first checking to see if the 
#inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. 
#Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setsolve function.

cacheSolve <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
