# Define matrices A and B
A = matrix(1:100, nrow=10)
B = matrix(1:1000, nrow=10)

# Transpose matrices A and B
t(A)
t(B)

# Create two vectors a and b
a = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
b = c(11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

# Multiply matrices A and B by vectors a and b, respectively
A %*% a
B %*% b

# Re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
a = c(1:10)
b = c(11:20)

# Multiply the matrices A and B
A %*% B

# Inverse matrix A
S=matrix(A, nrow=10, ncol = 10)

# Check determinant of S
det(S)
