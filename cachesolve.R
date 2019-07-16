cacheSolve <- function(x, ...) {                        #Function argument statement
        inv <- x$getinv()                               #Calls the getinv() function declared in makeCacheMatrix.R on the input matrix 'x'
        if(!is.null(inv)) {                             #Checks if true, 'inv' is not null
                message("getting cached data")          #returns value for inv in cache
                return(inv)
        }
        data <- x$get()                                 #Calls a custom function 'get' to store the matrix x in data
        inv <- solve(data, ...)                         #Calls a native function 'solve' to take the inverse of input matrix data
        x$setinv(inv)                                   #Calls a custom function 'setinv' called by x$setinv(y) that takes input y and caches to inv
        inv                                             #Returns the value cached in inv
}