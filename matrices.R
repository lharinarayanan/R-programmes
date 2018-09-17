# Represent a matrix in R
# data arranged columnwise by default
# Syntax var<-matrix(nrow=n1,ncol=n2,data=c())
x<-matrix(nrow=3,ncol=4,data=c(1,2,3,4,5,6,7,8,9,0,11,12))
x
# To access the element i,j in x use x[i,j]
x[3,2]
# To store elements in matrix by row set the byrow parameter as TRUE or T
y<-matrix(nrow=2,ncol=2,byrow = TRUE,data = c(1,2,3,4))
y
# To get dimension of a matrix use dim(matrix_name)
dim(y)
# To get numberof rows use nrow(mname) and for columns use ncol(mname)
nrow(y)
ncol
mode(y)
# To get information of property of a matrix use attributes(x)
attributes(y)
# matrix z has all values as 2 asdata is initialised to 2
z<-matrix(nrow=2,ncol=3,byrow=TRUE,data = 2)
z
nrow(z)
attributes(z)
ncol(z)
# Diagonal matrix construction
# syntax x-<diag(value,nrow=n1,ncol=n2)
d<-diag(1,2,2)
d
nrow(d)
ncol(d)
attributes(d)
# shorthand for data values in matrix if data is sequential
m<-matrix(nrow=4,ncol=2,data=1:8,byrow = T)
m
# For finding the transpose of a matrix x if it is to be stored in xt use the 
# command xt= t(x)
xt=t(m)
xt
# Multiplication of Matrices
# 1) By constant: just use m*matrix_name
2*m
# 2) Multiplying 2 matrices: use matrix1 %*% matrix2 provided the 2 matrices can be multiplied
#     %*% is used explicitely to multiply 2 matrices
p<-m%*%xt
# 2.1) To find out the product of mat1*TRANSPOSE(matr1) we can use the function crossprod(x)
# Note: It is the same as doing t(x)%*%x but crossprod executes the product faster
p
q<-crossprod(xt)
q
# Matrices can be added or subtracted by using the operations + and - provided their
# order is the same
a<-matrix(nrow = 2,ncol= 2, data = 1, byrow = T)
a
b<-matrix(nrow = 2,ncol= 2, data = 2, byrow = T)
b
c<-3*a+b
d<-2*b-a
c
d
ga<-matrix(nrow = 3,ncol= 5, data = 1:15, byrow = T)
ga
# To access the 3rd row in matrix just use vatrname[x,] and similar for column
ga[3,]
ga[,2]
# To access a submatrix use ga[x1:x2,y1:y2]
ga[2:3,3:5]
# To find the inverse of a positive definite matrix use solve(matrixname)
solve(y)
y%*%solve(y)
# To find the eigen values and eigen vectors of a matrix x use function eigen(x)
eigen(y)