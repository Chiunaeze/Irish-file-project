#make a list with three vectors
PoliFigs <- list('Washington', 'Lincoln', 'Jefferson', 'Rosevelt')
elected <- list('1789', '1860','1801', '1901') 
party <- list('None', 'Republican', 'Democrat', 'Republican') 

#print(poliFigs, party)
print(poliFigs, party)

rm(list=ls())
#load the iris data set into a data table object

library(data.table)

dt_iris <- data.table(iris)

#query data table
#Sepal.Length > 5

dt_iris[dt_iris$Sepal.Length > 5]

#Sepal.Length > 5 and Sepal.Width > 3.4

dt_iris[dt_iris$Sepal.Length > 5 & Sepal.Width > 3.4]

#Now apply aggregation

dt_iris[
  dt_iris$Sepal.Length> 5 & dt_iris$Sepal.Width > 3.4,
  .(avg_petal_length = mean(Petal.Length),
    avg_petal_width = mean(Petal.Width)),
  by = .(Species)
]