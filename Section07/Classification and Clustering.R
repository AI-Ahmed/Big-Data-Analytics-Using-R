#Classification 
dim(mydata)
set.seed(1234)
ind = sample(2,nrow(mydata),replace = TRUE,prob = c(0.7,0.3))

train = mydata[ind==1,]
testing = mydata[ind==2,]
myf = mydata$Species ~ mydata$Sepal.Length+mydata$Sepal.Width+mydata$Petal.Length
+mydata$Petal.Width

mydata_ctree = ctree(myf,train)

table(predict(mydata_ctree),mydata$Species)
plot(mydata_ctree)

#Clustering 
newdata = iris
newdata$Species = NULL
#scal_newdata = scale(newdata[-1])
#results = kmeans(scal_newdata,3)
results = kmeans(newdata,3)
attributes(results)
table(mydata$Species,results$cluster)

