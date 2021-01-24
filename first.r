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
# to un class the factor that which numeric values used to define factor
unclass(x)
>>>>>>> 90167e8f9313ed2922c003a31be0b4ffc52f328e

# to add factor method

weekday <- factor(c("saturday","sunday","monday","tuesday","wednesday","thrusday","friday"),
                  levels = c("satuday","sunday","monday","tuesday","wednesday","thursday","friday"))
levels(weekday)
table(weekday)
length(weekday)
unclass(weekday)

# to find missing values

v <- factor(c(1,2,3,4,NA,NaN,6))
V
table(v)
dim(v)
attr(v)
length(v)
class(v)
unclass(v)


# to find missing values

is.na(v)
is.nan(v)

# to add data frame

x <- data.frame(day=1:4,rain=c(T,T,F,F))
x
nrow(x)
ncol(x)

# to assign value of rows

row.names(x) <- c("A","B","c","D")
x

# object names
x <- 1:4
names(x) NULL
names(x) <- c("col_A","col_B","col_c","col_D")
x
row.names(x) <- c("A","B","C","D")
x <- list(a=1:5,b="ID",c=c("First Name","Last Name"))
x
x$a
x$b
x$c


m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("r1","r2"),c("c1","c2"))
m
dimnames(m)


# Subsetting
x <- c("a","b","c","c","d","a")
x[1]
x[2]
x[1:5]
x[x>"d"]
u <- x > "a"
u

# Matrices can be subsets in the usual way with (i,j) type indices.

x <- matrix(1:6, 2,3)
x[1, 2]
x[2, 1]

# Indices can also be missing.

x[1, ]
x[, 2]
x

# Subsetting a Matrix (Contd.)
#By default, when a single element of a matrix is retrieved, it is returned as a vector of length 1 rather than a 1X1 matrix.
# This behavior can be turned off by setting drop = FALSE.

x >- matrix(1:6, 2,3)
x[1, 2]
x[1, 1, drop=FALSE]
x

# Similarly, sub-setting a single column or a single row will give you a vector,
# not a matrix (default).

x <- matrix(1:6, 2, 3)
x
x[1, , drop=FALSE]


#subsetting Lists

x<-list(weekday=1:4, rain_prob=0.6)
x[2]
x$rain_prob
x[["rain_prob"]]
x["rain_prob"]

# Subsetting Lists(Contd).

x<-list(weekday = 1:4, rain_prob = 0.6, item = "umbrella")
x[c(1, 2)]


# Subsetting Lists (Contd.)

x<-list(weekday = 1:4, rain_prob = 0.6, item = "umbrella")
name<-"weekday"
x[[name]]         # computed index for 'weekday'
x$name            # element 'name' doesn't exist!
x$weekday         # element 'weekday' does exist.


# Subsetting Nested Elements of a List
# The [[ can take an integer sequence.

x<-list(a=list(10,12,14), b=c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2, 1)]]

# Removing NA Values
# A common task is to remove missing values(NAs).

x<- c(1,2, NA, 4, NA, 5)
bad<-is.na(x)
x[!bad]
bad

# Removing NA Values(Contd.)
# What if there are multiple things and you want to take the subset with no missing valuses?

x<-c(1,2,NA, 4, NA, 5)
y<-c("a","b",NA,"d",NA,"f")
good<-complete.cases(x, y)
good
x[good]
y[good]

# Removing values "NA" from tables
a<-airquality
good<-complete.cases(a)
a[good, ][1:8, ]

# Control Structures :if

x <- 2
y <- 0
if (x>3) {
  y<-10} else{
    y<-0}
y


# another way to assign values in variable or vector y

y <- if(x>3) {
  10
} else {
    0
}
y
