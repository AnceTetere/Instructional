library(tidyverse)

#Default
ggplot(iris) +
  geom_boxplot(aes(Species, Petal.Length))

#Colour = "red"
ggplot(iris) +
  geom_boxplot(aes(Species, Petal.Length), colour = "red")

#Fill = "red"
ggplot(iris) +
  geom_boxplot(aes(Species, Petal.Length), fill = "red")

#Species as a colour variable
ggplot(iris) +
  geom_boxplot(aes(Species, Petal.Length, colour = Species))

#Species as a colour variable + points
ggplot(iris)+
  geom_boxplot(aes(Species, Petal.Length, colour = Species)) +
  geom_point(aes(Species, Petal.Length, colour = Species))

#Notice the aes(x, y, fill = varZ) has been brought to the ggplot level 
#so to avoid duplicating it in both geom_boxplot() and geom_point()/geom_jitter() 
ggplot(iris, aes(Species, Petal.Length, colour = Species)) +
  geom_boxplot() +
  geom_point()

#Species as a colour variable + jittered
ggplot(iris, aes(Species, Petal.Length, colour = Species)) +
  geom_boxplot() +
  geom_jitter()

#Mini quiz using the ggplot2::diamonds dataset
#1 Create a boxplot of 'cut' on the x-axis and 'price' on the y-axis.
ggplot(diamonds) +
  geom_boxplot(aes(cut, price))

#2 Modify the plot so that all the boxes are filled in purple.
ggplot(diamonds) +
  geom_boxplot(aes(cut, price, fill = "purple"))

#3 Modify the plot further so that the variable 'cut' is shown as different box colours.
ggplot(diamonds, aes(cut, price, colour = cut)) +
  geom_boxplot()
