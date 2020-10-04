## - Read data file
  mydata <- iris
  
## - Decision tree with 'party'
  install.packages('party', dependencies= TRUE)
  #- call the package
  library(party)
## - related library
  library(grid)
  library(mvtnorm)
  library(modeltools)
  library(stats4)
  library(strucchange)
  library(zoo)
  library(sandwich)
# - ctree -> call the decision tree
  # - '~' related to
mytree <- ctree(species ~ Sepal.Length + Sepal.Width
                         + Petal.Length + Petal.Width, mydata)
        

##- Classification
  mydata <- iris
  
  #- dimensional test
    dim(mydata)
  #- generate Random dataset set.seed(randomData)
    set.seed(1234)
  
  #- sample- > excute rondom the testing, replace- > replace cols, 
    #prob= probability of rendomly testing replacing set exp(70%, 30%) of the nrow
    #sample(#No. of seperate testing, #No. of rows, ...)
    ind = sample(2, nrow(mydata), replace = TRUE, prob = c(0.7, 0.3))
  #- getting the "Train data" -> model answer mydata[ind ==1,"the whole cols"]
    train = mydata[ind == 1,]
  #- getting the "Train data" -> model answer mydata[ind ==1,"the whole cols"]
    testing = mydata[ind == 2,]
    
  #- myf = mydata$'Class col. which needs to generate it from the machine learing'
        #  +the whole row expected to get the class name which 'related to'
    myf = mydata$Species ~ mydata$Sepal.Length + mydata$Sepal.Width
                         + mydata$Petal.Length + mydata$Petal.Width
  #- Assign myData decision tree
    mydata_ctree = ctree(myf,train)
  # - table has the predictible data from mydata_tree and minpulate it with the class col "species"
    table(predict(mydata_ctree), mydata$Species)
  # - view this machine testing in plot diagram
      plot(mydata_ctree)
##-----------------------------------------
      
##- Clustering
    newdata <- iris
    newdata$Species = NULL
  #- kmeans(dataset, "No. of clustering")
    results = kmeans(newdata,3)
  #- For getting high accuracy results neared rows results to each other
    # -1 (reduce the scale), 0 (consist the scale), 1(increase the scale)
    scale_newdata = scale(newdata[-1])
    sacle_results = kmeans(scale_newdata, 3)
    
  #- attributes results
    attributes(results)
  # table testing
    table(mydata$Species,results$cluster)