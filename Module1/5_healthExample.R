#Load the package
library(tidyverse)

#1 Sort ascending on weight
arrange(health, weight)

#2 Sort descending on height
arrange(health, desc(height))

#Training
arrange(iris, desc(Sepal.Length))
arrange(iris, Petal.Width)
