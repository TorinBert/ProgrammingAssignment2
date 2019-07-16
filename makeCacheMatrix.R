makeCacheMatrix <- function(x = matrix()) {                                     #Function argument statement
        library(matrixcalc)                                                     #Initializes the matrixcalc library
        if(!is.square.matrix(x)){                                               #Checks that 'x' is a square matrix
                return(print("matrix must be square, try a new matrix"))        #Prints a message and exits function if check !fails
        }                                               
        inv <- NULL                                                             #Declare variable inv and pass it value 'NULL'
        set <- function(y) {                                                    #Declare a function 'set' called by data$set(y) that stores a new matrix in x and clears any cache for
                x <<- y
                inv <<- NULL
        }
        get <- function() x                                                     #Declare a function 'get' called by data$get() that returns x
        setinv <- function(inverse) inv <<- inverse                             #Declare a function 'setinv' called by data$setinv(y) that takes input y and caches to inv
        getinv <- function() inv                                                #Declare a function 'getinv' called by data$getinv() that returns inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)                                                   #Returns a list of the declared functions
}