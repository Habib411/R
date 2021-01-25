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
sd(x = mydata, na.rom = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

# Functions Arguments

# Functions have named arguments which potentially have default values.
# The formal arguments are the arguments included in the function definition
# The formals function returns a list of all the formal arguments of function
# Function arguments can be missing or might have default values

mydata <- data.frame(x=rnorm(100), y=rnorm(100))

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

