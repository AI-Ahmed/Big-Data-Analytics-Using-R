#concatenate a set of elements
c(1, 2, 3)
#list numbers between two numbers  
1:20
#list all of R's colors
colors()
#show the current order of colors  
palette()  
#set colors
palette(rainbow(6))
#shows how current order of colors has been re-defined  
palette()  
#set user defined colors
palette(c("green", "brown", "red"))  
#shows how current order of colors has been re-defined 
palette()  

install.packages("ggplot2")
library(ggplot2)

#read in the csv file
SampleData <- read.csv(file.choose()) 
#view the data table in its entirety 
View(SampleData)
#see all header (column) names  
names(SampleData) 
#see the headers plus the first six rows of data within each header 
head(SampleData)
#see some summary statistics of each column  
summary(SampleData)
#open an excel-esque data editor (CAREFUL: there is no record of this change, nor does it change the data in the csv file)  
fix(SampleData)  

# enter each set of data in the same order
friends <- c("Jane", "John", "Moe")
cats <- c(2, 1, 3)
dogs <- c(0, 1, 2)

# create data frame
Pets <- data.frame(friends, cats, dogs, row.names = TRUE)

# enter data in the same order
Pets$mice <- c(1, 1, 4)
# Find Maximum, Minimum, Range
max(SampleData$rent)  #find maximum value of rent
min(SampleData$rent)  #find minimum value of rent
range(SampleData$rent)  #find range of rent

#Formula to re-scale variable
# (new_max - new_min) * ([value] - lowest_value) / (highest_value -
# lowest_value) + new_min

# it is easy to add a new column: SampleData$newcol <- [formula]

SampleData$rent_10  <- 
  (10 - 1) * ((SampleData$rent - min(SampleData$rent))/(max(SampleData$rent) -
               min(SampleData$rent))) + 1

#Subset data
upper <- SampleData[SampleData$region == "upper", ]  #note the comma after the conditional!
View(upper)  #compare how newly created 'upper' differs from 'SampleData' data

central <- SampleData[SampleData$region == "central", ]  #without the comma it defaults to the second part
View(central)

lower <- SampleData[SampleData$region == "south", ]
View(lower)

#Scaling and Normalizing
#Transform and Add data
SampleData$population_transf <- (SampleData$population)^5  #Raises population to the power of 5
SampleData$population_transf <- exp(SampleData$population)  #Raises the constant e to the power of population

SampleData$population_transf <- cos(SampleData$population)  #Calculates the cosine of population
SampleData$population_transf <- abs(SampleData$population)  #Finds the absolute value of population

SampleData$population_transf <- (SampleData$population) * 10  #Multiplies population by 10

#Log transformations
log(SampleData$population)  #Computes log base e of population
log(SampleData$population, 2)  #Computes log base 2 of population
log(SampleData$population, 10)  #Computes log base 10 of population

#Create new variable from old variables

# create a variable of populations density by dividing population size by
# area
SampleData$pop_density <- SampleData$population/SampleData$area

# log transform your new variable
log(SampleData$pop_density)

#Aggregating
#Descriptive statistics
sum(SampleData$population)  # Computes sum of population
mean(SampleData$population)  # Computes mean of population
var(SampleData$population)  # Computes variance of population
sd(SampleData$population)  # Computes standard deviaation of population

# you can often nest functions within each other
median(log(SampleData$population))  #Computes median of log of population

#Visualizing 1 Variables
#Histograms
hist(SampleData$unemploy)  # default graph, without labels
# inserting better x-axis label (xlab parameter) and title (main parameter)
hist(SampleData$unemploy, xlab = "Unemployment", main = "Histogram of Unemployment by County \nin Michigan") 
#Histogram breaks
hist(SampleData$unemploy, xlab = "Unemployment", main = "Histogram of Unemployment by County; 6 breaks",
     breaks = 6)
hist(SampleData$unemploy, xlab = "Unemployment", main = "Histogram of Unemployment by County; 20 breaks",
     breaks = 20)
#Boxplots
boxplot(SampleData$hh_income, main = "Median Household Income\nacross Michigan Counties \nACS 2006-2010")

#Visualizing 2-3 Variables
boxplot(hh_income ~ region, data = SampleData, col = palette(rainbow(3)), main = "Median Income by Region\nby County ACS 2006-2010")  
#Scatterplots
# cex controls the size of the points (1 is default)
plot(SampleData$unemploy, SampleData$hh_income, cex = 1.5)

#Scatterplot and Log Transformation
# we can plot the log of a variable by simply adding it to the plot command
plot(SampleData$hh_income, log(SampleData$population, 2))

#Scatterplot - building by layers
#create a blank canvas ('type' parameter) and add axis labels ('xlab' and 'ylab' parameters)
plot(c(0, max(SampleData$rent)), c(0, max(SampleData$hh_income)), type = "n", xlab = "Rent",
     ylab = "Median Household Income")  
points(upper$rent, upper$hh_income, pch = 20, col = "blue")
points(central$rent, central$hh_income, pch = 20, col = "red")
points(lower$rent, lower$hh_income, pch = 20, col = "green")
# run '?legend' to figure out what these commands mean
legend("topleft", c("upper", "central", "lower"), pch = 20, col = 
c("blue","red", "green"), title = "Region", bty = "n")  
