#Install and load packages
#install.packages("tidyverse")
library(tidyverse)

#Data
gender <- c("M", "F", "M", "F", "M", "M", "M", "Not disclosed", "M", "F", "M")
age <- c(29, 67, 40, 23, 26, 34, 55, 42, 18, 73, 18)
weight <- c(52, 65, 80, 57, 71, 90, 67, 78, 85, 50, 85)
height <- c(165, 171, 183, 154, 173, 167, 169, 180, 190, 145, 190)
health <- tibble(gender, age, weight, height)
rm(gender, age, weight, height)

filter(health, height > 170)

#1) Filter height > 170 and gender is M
filter(health, height > 170 & gender == "M")

#2) Filter height > 170 or gender is M
filter(health, height > 170 | gender == "M")

#3) Filter height > 170, gender is M, and age is either 18 or 40
filter(health, height > 170 & gender == "M" & age %in% c(18, 40))

filter(iris, Petal.Length < 1.6)
filter(iris, Sepal.Length > 5.0 & Sepal.Width > 3.0)
filter(iris, Petal.Width %in% c(0.2, 0.3, 1.4) & Species == "virginica")

