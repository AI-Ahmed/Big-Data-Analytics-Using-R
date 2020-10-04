#Import File
mytable <- read.table(file = file.choose(),header= T, sep=",")
#alt Import File
mytable <- read.table(file = "E:\\Education\\Terms_Components\\Term07\\BigDataAnalysis\\Lab\\Practics\\Section04\\empData.csv",header= T, sep=",")
#To Run it -> view(mytable)

#Summary the data
summary(mytable)

#to select a certain col and rows in the table-> mytable[c(rows),c(col)]
mytable[c(1,2,3),]

#to select a range cols and rows in the table-> mytable[c(rows: rows),c(col)]
mytable[c(1: 500),c(1:4)]

#head(mytable) helps you to retrive the first 6 rows
head(mytable)

#tail(mytable) helps to retrive the last 6 rows
tail(mytable)

#Display the col's name
colnames(mytable)

#Change the col's name
colnames(mytable)<- c("col1", "col2",...)

#subset data: subset(mytable,mytable$certain_col_title >= col_certain_value & mytable$certain_col_title <= 80)
value <- subset(mytable, mytable$price >= 180 & mytable$price <= 1800 )

#Export Table
write.xlsx(mytable, file = "E:\\Education\\Terms_Components\\Term07\\BigDataAnalysis\\Lab\\Practics\\Brands.xlsx",row.names = F)

#Remove value
rm(list= ls())

#for Loop
for(i in 1:10){
  print(i)
}

#while Loop
while(i<=10){
  print(i*i)
  i=i+sqrt(i)
}

