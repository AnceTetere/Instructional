#Load the package
library(tidyverse)

#1 Create a new dataset health2 that contains the bmi variable
health2 <- mutate(health, bmi = weight/(height/100)^2)
health2

#2 Mutate health2 to have a bmi_classification variable that categorises bmi into
#  underweight (<18.5), normal (18.5 - 24.9), and overweight (>24.9).
mutate(health2, bmi_classification = cut(bmi, breaks = c(0, 18.5, 24.9, Inf),
                                        labels = c("underweight", "normal", "overweight")))

#Training
mutate(iris, Petal.Area = Petal.Length * Petal.Width)
mutate(iris, Sepal.LW.ratio = Sepal.Length / Sepal.Width)
mutate(iris, Petal.Length.Classification = cut(Petal.Length, breaks = c(0, 2, 5, Inf),
                                               labels = c("small", "normal", "tall")))
