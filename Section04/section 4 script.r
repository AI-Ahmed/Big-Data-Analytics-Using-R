#Import table
myTable <- read.table(file = "C:\\Users\\moham\\Desktop\\files\\NHIS_2007_data.csv",header = T,sep = ",")
#OR
myTable <- read.table(file = file.choose(),header = T,sep = ",")

#Export table
write.csv(myTable,file = "C:\\Users\\moham\\Desktop\\files\\TestData.csv",row.names = F)
#OR
write.csv(myTable,file = file.choose(),row.names = F)

#view table data
#view 3 row and all columns
myTable[c(1,2,3), ]

#view first 6 row
head(myTable)

#view last 6 row
tail(myTable)

##view table summary
summary(myTable)

#view column names
colnames(myTable) 

# Change column names
colnames(myTable) <- c("zipCode", "income")

# Create a subset of the data 
#under condations
nf <- subset(df, df$income > 7000 & df$income < 200000)


#Remove variable
rm(myvar)

#Remove all variables
rm(list = ls())

#IF Statment
if (x == 3){
  print (TRUE)
}else {print (FALSE)}


#FoR loop
for(i in 1:10){
  print (i*i)
}


#while Loop
i=1
while(i<=10) {
  print(i*i)
  i=i+sqrt(i)
}
