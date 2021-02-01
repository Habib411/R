# This is my first repository

print("Hello R!")

m <- matrix(1:5,nrow = 5,ncol = 5)

m

dim(m)

attributes(m)

m <- 1:6
dim(m)
m
a <- 1:5
b <- 11:15
cbind(a,b)
rbind(a,b)

# how to define factor

p <- factor(c("Punjab","Sindh","Blochistan","Sirhad"))

# using table function to see how many values in a factor

table(p)

# to un class the factor that which numeric values used to define factor

unclass(p)
 
90167e8

# to add factor method

weekday <- factor(c("saturday","sunday","monday","tuesday","wednesday","thrusday","friday"),
                  levels = c("satuday","sunday","monday","tuesday","wednesday","thursday","friday"))
levels(weekday)
table(weekday)
length(weekday)
unclass(weekday)

# to find missing values

v <- factor(c(1,2,3,4,NA,NaN,6))
v
table(v)
dim(v)
attributes(v)
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

# to assign value of rows and columns

x <- 1:4
names(x)
names(x) <- c("col_A","col_B","col_c","col_D")
x
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
x[2, , drop=FALSE]


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

y <- if(x<3) {
  10
} else {
    0
}
y

# Control Structures: for

for(i in 1:10) {
  print(i)
 }

# 2nd example

x <- c("a", "b","c","d")
for (i in 1:4) {
  print(x[i])
}
for(i in seq_along(x)) {
  print(x[i])
}
for(letter in x){
  print(letter)
  
}
for(i in 1:4) print(x[i])


# Control Structures: Nested for Loops

#for loops can be nested.

x<-matrix(1:6,2, 3)
for(i in seq_len(nrow(x))){
for(j in seq_len(ncol(x))){
    print(x[i, j])
    
  }
}

# Control Structure While loop

# Functions

h <- function (arguments) {
  ## Do something interesting
}

# Argument Matching

mydata <- rnorm(100)
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

# Functions Arguments

# Functions have named arguments which potentially have default values.
# The formal arguments are the arguments included in the function definition
# The formals function returns a list of all the formal arguments of function
# Function arguments can be missing or might have default values

mydata <- data.frame(x=rnorm(100), y=rnorm(100))
mydata
# Argument Matching (Contd.)

# You can mix positional matching with matching by name. 
# When an argument is matched by name, it is "taken out" of the argument list and the remaining unnamed arguments are matched in the order that 
# they are listed in the function definition.

args(lm)

# The following two calls are equivalent.

mydata <- data.frame(x=rnorm(100),
                     y=rnorm(100))
lm(y ~ x, mydata, model = FALSE)
lm(data=mydata, y~x, model = FALSE, 1:100)

# Function arguments can also be partially matched, which is useful for interactive work. The order of 
# of operations when given an argument is
# Check for exact match for a named argument.
# Check for a partial match.
# Check for a positional match.

# Defining a Function

f<- function(a, b = 1, c=2, d=NULL) {
  
}

# Lazy Evaluation
# Arguments to functions are evaluated lazily, so they are evaluated only as needed.

f <- function (a, b)
{
  a^2
}
f(2)

f <- function (a=45, b=35, c=3)
{    print(a)
     print(b)
     print(c)
  }
f(1, 35, NULL)

# coding Standards
# Always use text/script file or text editor.
# Indent your code.
# Limit the width of your code (80 columsn?)
# Limit the length of individual functions

# Vectorized Operations

x<-1:4; y<-6:9
x+y
x>2
x>=8
y==8
x*y
x/y

# Vectorized Matrix Operations

x <- matrix(1:4, 2, 2); y <- matrix(rep(10,4,),2,2)
x*y     # element-wise multiplication [,1] [,2]
x/y
x%*%y   #true matrix multiplication

# Dates and Times in R

# R has developed a special representation of dates and times:
# Dates are represented by Date class.
# Times are represented by the POSIXct or the POSIXlt class.e
# Date are stored internally as the number of days since 1970-01-01.
# Times are stored internally as the number of seconds since 1970-01-01.

as.Date("2021-01-29")
as.POSIXct("2021-01-29")
as.POSIXlt("2021-01-29")

# Times in R
# Times are represented using th POSIXct or the POSIXlt class
# POSIXct is just a very large integer under the hood; it use a useful class when you want to store times in something like a data frame.
# POSIXlt is a list underneath and it stores a bunch of other useful information like the day of the week, day of the year, month, day of the month.
# There are a few generic functions that work on dates and times
# weekdays: give the day of the week.
# months: give the month name.
# quarters: give the quarter number ("Q1","Q2","Q3","Q4")

# Times in R (Contd.)
# Times can be coerced from a character string using the as.POSIXlt or as.POSIXct function.

x <- Sys.time()
x
p <- as.POSIXlt(x)
p
names(unclass(p))
p$sec
p$mon
p$wday

# You can also use the POSIXct format.

x <- Sys.time()
x    # # Already in 'POSIXct' format
x$sec
p <- as.POSIXlt(x)
p$sec

# Finally, there is the strptime function in case your dates are written in a different format

datestring <- c("January 10, 2012 10:40","December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)

# I can never remember the formatting strings. Check ?strptime for details.

# You can use mathematical operation on dates and times. Well, really just addition (+) and subtraction (-). You can do comparisons too(i.e.==, <=).
 
x <- as.Date("2021-01-29")
y <- strptime("9 Jan 2011 11:34:21","%d %b %Y %H:%M:%S")
x-y
class(x)
class(y)
x <- as.POSIXlt(x)
x-y

# Even keeps track of leap years, leap seconds, daylight savings, and time zones.

x <- as.Date("2012-04-01")
y <- as.Date("2012 -01-28")
x
y
x-y
x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 03:00:00", tz = "GMT")
x-y

# Loops Functions
# Looping on the Command Line
# Writing for, while loops is useful when programming but not particularly easy when working interactively on the command line for data sets.
# There are some functions which implement looping to make like easier.
# lappy: Loop over a list and evaluate a function on each element
# sapply: Same as lapply but try to simplify the result
# apply: Apply a function over the margins of an array
# tapply: Apply a function over subsets of a vector
# mapply: Multivariate version of lapply
# An auxiliary function split is also useful, particularly in conjunction with lapply.

# lapply
# Apply loop on List(lapply)
# lapply takes three arguments:
# (1) a list X;
# (2) a function (or the name of a function) FUN;
# (3) other arguments via its .... argument.

# lapply (Contd.)
# lapply always returns a list, regardless of the class of the input.
x <- list(a = 1:5, b = rnorm(10))
x
lapply(x,mean)
lapply(x,sum)
lapply(x,sd)
x <- 1:4
lapply(x, runif, min=0, max=10)
# names(x) <-c('a','b','c','d')
#apply
x <- matrix(rnorm(200), 20, 10)
x
# sapply
# sapply will try to simplify the result of lapply if possible.
# If the result is a list where every element is length 1, then a vector is returned.
# if the result is a list where every element is vector of the same length (>1), a matrix is returned.
# if it can't figure things out, a list is returned.

x <- list(a = 1:6, b = rnorm(11), c =rnorm(10, 3), d = rnorm(100, 5))
sapply(x, mean)

# apply
# apply is used to a evaluate a function (often an anonymous one) over the margins of an array.
# It is most often used to apply a function to the rows or columns of a matrix.
# It can be used with general arrays, e.g., taking the average of an array of matrices.
# It is not really faster than writing a loop, but it works in one line!.
str(apply)
# example
x <- matrix(rnorm(200), 20, 10)
x
apply(x, 2, mean)

# col/row sum and mean
# for sums and means of matrix dimensions, we have some shortcuts.
# rowSums = apply (x, 1, sum)
# rowMeans = apply(x, 1, mean)
# colSums = apply (x, 2, sum)
# colMeans = apply (x, 2, mean)

apply(x, 2, quantile, probs = c(0.25,0.75))

# tapply
# tapply is used to apply a function over subsets of a vector. I don't know why it's called tapply.
str(tapply)
# X is a vector.
# INDEX is a factor or a list of factors (or else they are coerced to factors).
# FUN is a function to be applied.
# ... contains other arguments to be passed to FUN.
# simplify, should we simplify the result?

# tapply (Contd.)
# Take group means.
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
tapply(x, f, mean, simplify = FALSE)
tapply(x, f, range)
<<<<<<< HEAD

# split data
# split takes a vector or other objects and splits it into groups determined by a factor or list of factors.
str(split)
# out put of the above code is
# X is a vector (or list ) or data frame.
# f is a factor (or coerced to one) or a list of factors.
# drop indicates whether empty factors levels should b dropped.
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f)

# split (Contd.)
# A common idiom is split followed by an lapply.

lapply(split(x, f), mean)

# Splitting a Data Frame
library(datasets)
head(airquality)

# Splitting a Data Frame (Contd.)
s <- split(airquality, airquality$Month)
lapply(s, function(x) colSums(x[, c("Ozone", "Solar.R","Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R","Wind")],
                               na.rm = TRUE))
=======
>>>>>>> fcd71050eb9fa3345f3136fa491bdcd7e0a1f5a7
