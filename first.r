# This is my first repository
print("Hello R!")
<<<<<<< HEAD
m <- matrix(1:5,nrow = 5,ncol = 5)

m

dim(m)

attributes(m)

dim(m) <- c(2,3)

m <- 1:6

dim(m)

m
a <- 1:5
b <- 11:15
cbind(a,b)

rbind(a,b)

=======
# for create matric of 1:5 1 row and five colum
m <- matrix(1:5,nrow = 5,ncol = 5)
# for print output of variable or vector "m"
m
# to check dimension of "m"
dim(m)
# to check attributes of "m"
attributes(m)
# another way to assign rows and colums in R
dim(m) <- c(2,3)
# for adding values in range
m <- 1:6
# check dimension
dim(m)
# check vector or variable
m
# assign values in range in vector a
a <- 1:5
# assign values in range in vector b
b <- 11:15
# to bind values in colum
cbind(a,b)
# to bind values in rows
rbind(a,b)
# how to define factor
p <- factor(c("Punjab","Sindh","Blochistan","Sirhad"))
# using table function to see how many values in a factor
table(x)
# to unclass the factor that which numeric values used to define factor
unclass(x)
>>>>>>> 90167e8f9313ed2922c003a31be0b4ffc52f328e
