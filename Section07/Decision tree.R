#Read data file
mydata <- iris

#Decision tree with party
library(party)
mytree <- ctree(Species~Sepal.Length+Sepal.Width
                +Petal.Length+Petal.Width, mydata)

print(mytree)
plot(mytree,type="simple")
plot(mytree)
