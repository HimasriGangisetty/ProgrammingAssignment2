## Put comments here that give an overall description of what your
## functions do

-## Write a short comment describing this function
-
+##There are two functions makeCacheMatrix,makeCacheMatrix
+##makeCacheMatrix consists of set,get,setinv,getinv
+##library(MASS) is used to calculate inverse for non squaredas well as square matrices
+library(MASS)
 makeCacheMatrix <- function(x = matrix()){
-
+ inv<-NULL              #initializing inverse as NULL
+ set<-function(y){
+                 x<<-y
+                 inv<<-NULL
+                  }
+ get<-function()x                 #function to get matrix x
+ setinv<-function(inverse)inv<<-inverse
+ getinv<-function(){
+                   inverse<-ginv(x)
+                   inverse%+%x       #function to obtain inverse of the matrix
+                   }
+ list(set = set, get = get,
+      setinv = setinv,
+      getinv = getinv)
}  

    
