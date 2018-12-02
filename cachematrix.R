## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

####Added description::  Here I present the fuctions needed for finding the inverse matrix
#### in R.  Similarly with the given example in Coursera,  at step 1,  I initiallize x and i.  At step 2,  I set the matrix. 
#### Next at step 3, I get the matrix.  At step 4  I set the inverse of the matrix.
#### At step 5, I get the inverse of the matrix.  Finally, at step 6, I put the list command.


makeCacheMatrix <- function(x = matrix()) {

   ##step 1
   i <- NULL

  ## step 2  
   set <- function( matrix ) {
           x <<- matrix
	     i <<- NULL
    }

    ##  step 3
   get <- function() {
           x 
    }
    
    ## step 4
    setinverse_matr <- function(inverse_matr){
    i <<- inverse_matr
    }
  
    ## step 5
    getinverse_matr <- function(){
    i
    }
     
    ## step 6
     list(set = set, get = get,
          setinverse_matr =setinverse_matr,
          getinverse_matr = getinverse_matr)
}




## Write a short comment describing this function
####Added description::  Here I present the fuctions needed for finding the matrix returned by the makeCacheMatrix.
####  At step 1,  I found the inverse of matrix x.  At step 2, if I the inverse is set, then this step returns the inverse.
####  At step 3,  I get the matrix from previous function.  At step 4, I calculate the inverse of matrix x (the solve command implies that the system
####  is A*m= I, where m is the inverse ).  At step 5,  I set the inverse.  


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

      ## step 1
       m <-x$getinverse_matr()
     
      ## step 2 
      if(!is.null(m)) {
             message("getting cached data")
             return(m)
        }

    ## step 3 
        data <- x$get()

    ## step 4 
        m <- solve(data)

    ## step 5 
        x$setinverse_matr(m)


        m
 
}


#####  test
#####  x = matrix(1:4, nrow = 2, ncol = 2)
#####  m=makeCacheMatrix(x)
#####  m$get()
#####       [,1] [,2]
#####[1,]    1    3
#####[2,]    2    4
##### ==========================
##### cacheSolve(m)
#####     [,1] [,2]
#####[1,]   -2  1.5
#####[2,]    1 -0.5
#####  in the second run
#####getting cached data
#####     [,1] [,2]
#####[1,]   -2  1.5
#####[2,]    1 -0.5


> 
