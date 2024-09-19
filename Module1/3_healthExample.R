#Load the package
library(tidyverse)

slice(health, 1, 11)

#1) Select the first 5 rows
slice(health, 1:5)

#2) Remove the first 5 rows
slice(health, -(1:5))

#3) Select the last row (we can use n() to locate the last row in a data set)
slice(health, n())

slice(iris, n())
slice(health, 1:10, 20)
slice(health, -c(2, 7, 11))
