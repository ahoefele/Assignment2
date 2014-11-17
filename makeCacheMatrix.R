makeCacheMatrix <- function(x = matrix()){
        if (nrow(x)==ncol(x)){
                
                m <- NULL
                set <- function(y) {
                        x <<- y
                        m <<- NULL
                }
                get <- function() x
                setinverse <- function(solve) m <<- solve
                getinverse <- function() m
                list(set = set, get = get,
                     setinverse = setinverse,
                     getinverse = getinverse)  
        }
        else{
                print("Sorry, the matrix is not a square matrix")
                break
        }
        
}