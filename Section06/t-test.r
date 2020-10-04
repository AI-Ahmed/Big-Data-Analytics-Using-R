## - The value of dataset that in r, value will be iris
  
  x <- iris

## - This function will compile and test the dataset which install in 'x'
  res1 <-t.test(x, mu = 0, alternative = "two.sided")
        #- mu = previous mean
  res1
## - Another one simple t-test
  res <- t.test(x$Sepal.Length, mu = 25)
  
## - print the results
  res
  print(res)

## - Access to the values returned by t.test() function
  
  res$statistic
  res$parameter
  
  