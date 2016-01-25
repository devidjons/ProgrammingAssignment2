## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       inv <- NULL
       set <- function(y) {
              x <<- y
              inv <<- NULL
       }
       get <- function() x
       setinv <- function(solv) inv<-solv
       getinv <- function() inv
       list(set = set, get = get,
            setinv = setinv,
            getinv = getinv)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       inv<-x$getinv()
       if (!is.null(inv))
       {
              message("getting cached data")
              return(inv)
       }
       data<-x$getinv()
       solut<-solve(x$get())
       x$setinv(solut)
       solut
        ## Return a matrix that is the inverse of 'x'
}

