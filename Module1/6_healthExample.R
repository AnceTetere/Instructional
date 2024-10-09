#Load the package
library(tidyverse)

#1 Summarise the average height
summarise(health, average_height = mean(height))

#2 Summarise the standard deviations for height and weight
summarise(health, SD_height = sd(height), SD_weight = sd(weight))

#3 Summarise the maximum weight
summarise(health, max(weight))

#3 Summarise the number of observations (rows) in the data
summarise(health, Number_of_observations = n())

#Training
summarise(iris, avg_PetalLength = mean(Petal.Length))
summarise(iris, max_SepalWidth = max(Sepal.Width))
summarise(iris, sum_PetalWidth = sum(Petal.Width))
