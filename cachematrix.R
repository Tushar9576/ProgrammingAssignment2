## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3))) {
j <- NULL
+   set <- function(y){
+   x <<- y
+   j <<- NULL
+   }
+   get <- function()x
+   setInverse <- function(inverse) j <<- inverse
+   getInverse <- function() j 
+   list(set = set, get = get, 
+   setInverse = setInverse, 
+   getInverse = getInverse)
}


## Same here, changed "mean" to "solve" and "m" to "s"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 j <- x$getInverse()
+   if(!is.null(j)){
+   message("getting cached data")
+   return(j)
+   }
+   mat <- x$get()
+   j <- solve(mat,...)
+   x$setInverse(j)
+   j
}
