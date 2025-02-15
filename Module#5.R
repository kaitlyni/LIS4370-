#The first step is setting up your
#Matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)
#Transpose A and B  given a matrix or data.frame x, t returns the transpose of x. 
tA <- t(A)
tA
tB <- t(B)
tB
#create two vectors (a and b)
a <- 1:10
b <- 1:100
#multiply matrices by vectors
A %*% a
B %*% b
#re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
a <- 1:10
b <- 1:10
#Multiply the matrix by a matrix
C <- A %*% tA
D <- B %*% tB
#Inverse a matrix
S <- matrix(2:5, nrow=2)
#check det()
det(S)
solve(S)