#Load the package
library(tidyverse)

select(health, gender, weight)

#1) Select the 1st and 2nd variables
select(health, gender, age)
select(health, 1:2)
select(health, 1, 2)
select(health, c(1,2))

#2) Remove the 3rd variable
select(health, -3)

#3) Remove the 3rd and 4th variables
select(health, -c(3,4))

select(iris, Species)

select(iris, Sepal.Length, Sepal.Width, Petal.Length)
select(iris, 1:3)
select(iris, 1, 2, 3)
select(iris, c(1, 2, 3))

select(iris, -1, -3)
select(iris, -c(1,3))
