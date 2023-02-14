#1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)  
#a) Find A + B
A + B
#b) Find A - B
A - B

#2. Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
values <- c(4,1,2,3)
diag(values)

#3. Generate matrix
m <- diag(c(3, 3, 3, 3, 3))
m[,1]<- 2
m[1,]<- 1
m[1,1] <- 3 
m




