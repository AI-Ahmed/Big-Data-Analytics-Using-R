#concatenate a set of elements
c(1,2,3)
#list of numbers betw. tow numbers
1:20
#select all the colors in R libarary
color()
#show the current order of color
palette()
#set colors
palette(rainbow(6))
#shows how current order of colors has been re-defined
palette()
#set user defined color
palette(c("green","brown","red"))
#shows how current order of colors has been re-defined
palette()
#install color package
install.packages("ggplot2")
library(ggplot2)
#read in csv file
datast <- read.csv(file.choose())
#view the data table in its entirety
View(datast)
#see all the headers (col) names
names(datast)
#see the header
head(datast)
#see some summary
summary(datast)
#open page of data to update, view, delete any data
fix(datast)

#set some data
friends <- c("jhonny","Lisa", "Jouesh")
cats <- c(1,3,2)
dogs <- c(2,3,4)

#set as data frame
pets <- data.frame(friends, cats, dogs, row.names = TRUE)

#enter data in same order
pets$mice <- c(1, 1, 4)
#data/////////////////////////






#///////////////////////////////////////////////////////////////////
#it is easy to add a new column : dataset&newcol <- [formala]
datast$rent_10 <- 
  (10-1) * ((dataset&rent - min(datast$rent))/max(datast$rent) - 
              min(datast$rent)) + 1
#subset data
upper <- datast[datast$region == "upper", ] #note the comma after the condition
View(upper) #compare how newly created 'upper' differs from 'datast' data

central <- datast[datast$region == "central", ]#without the comma it default
View(central)

lower <- datast[datast$region == "south", ]
View(lower)

#scalung and Normalizing
#transform and add data
datast$population_transf <-(datast$population)^5 