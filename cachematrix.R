## Put comments here that give an overall description of what your
## functions do:
#This script contains two functions
#makeCacheMatrix
#cacheSolve

## Write a short comment describing this function
#The purpose of this function is to create an inverted matrix
#


#Created by Jim Keenan 2015-05-23
#Version 1.0
#
makeCacheMatrix <- function(x = matrix()) {
   # where x is  a square matrix
   #returns a list of functions (get
   #set/get matrix
   #set/get the inverse

        
        inv = NULL
        set = function(y) {
                # use `<<-` to assign a value to an object in an environment 
                # different from the current environment. 
                
              x <<- y
              inv <<- NULL
        }
        get = function() x
        setinv = function(inverse) inv <<- inverse 
        getinv = function() inv
        list(set=set, get=get, 
             setinv=setinv, getinv=getinv)
}

cacheSolve <- function(x, ...) {
        
#Ispassed matrix x, and return inverted matrix inv

       inv = x$getinv()
        
        #Tests to see if data exists in cache

       	 if (!is.null(inv)){
                     message("getting cached data")
                     return(inv)
       	 }



#If not, gets a matrix and inverts it
        
        mat.data = x$get()
        inv = solve(mat.data, ...)
        
        
        x$setinv(inv)
        
        return(inv)


}
