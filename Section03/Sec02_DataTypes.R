#Create Vector
vec_char <- c('apple',"green","blue")
print(vec_char)

#Vector print type
print(class(vec_char))
#-------------------------------------------------------------
#create List
list1 <- list(c("1,2,3"),c("shady","jhon","yonko"),12.22,"fyras")
print(list1)
#-------------------------------------------------------------
#create Matrix -> you're creating 2d matrix
Mat <- matrix(c('a','b','c','I','II','III'),nrow = 2, ncol = 3,byrow = TRUE)
print(Mat)
#-------------------------------------------------------------
#Create Array -> you can create any type of matrix using unstatic data
arry <- array(c("Green","Violet"), dim = c(3,3,4)) #dim = c(nrow,ncol,nprint)
print(arry)
#-------------------------------------------------------------
#create a Factor
  #-> create a vector
  color_vector <- c("green",'blue','yellow','green','blue','violet',"yellow")
  #->Factor function
  color_factor<- factor(color_vector)
  #->print Factor
  print(color_factor)
  #->count the given count of level
  print(nlevels(color_factor))
#-------------------------------------------------------------  
#Create Data Frame
  #-> Different betw. it and matrix is dataFrame can incubate..
  #-> a different types of data numeric, char, complex...etc
porStar_dataFrame <- data.frame(
  name = c('jhonny',"Daniel","villa",'angel'),
  gender = c('Male','Female',"Female","Female"),
  height = c(183,175,178,169),
  age = c(48, 28, 43, 37)
)
print(porStar_dataFrame)
#-------------------------------------------------------------  
#you can use rm() to remove any obj in the workspace
#-------------------------------------------------------------
##-Data frame row & cols displayed

# All Rows and All Columns

df[,]



# First row and all columns

df[1,]



# First two rows and all columns

df[1:2,]



# First and third row and all columns

df[ c(1,3), ]



# First Row and 2nd and third column

df[1, 2:3]



# First, Second Row and Second and Third COlumn

df[1:2, 2:3]



# Just First Column with All rows

df[, 1]



# First and Third Column with All rows

df[,c(1,3)]