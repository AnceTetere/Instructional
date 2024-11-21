install.packages("tidyverse")
install.packages("magrittr")

library(tidyverse)
library(magrittr)

#Scatterplot
ggplot(iris) +
  geom_point(aes(Petal.Width, Petal.Length))

ggplot(diamonds) +
  geom_point(aes(carat, price))

#Change the shape and colour
ggplot(iris) + 
  geom_point(aes(Petal.Width, Petal.Length), shape = 2, colour = "red")

#Change the size
ggplot(iris) +
  geom_point(aes(Petal.Width, Petal.Length), size = 5)

#Colour coding aesthetics
ggplot(iris) +
  geom_point(aes(Petal.Width, Petal.Length, colour = Species))
ggplot(diamonds) +
  geom_point(aes(carat, price, shape = cut, colour = cut))

#Shape coding aesthetics using the 3rd variable
ggplot(iris) +
  geom_point(aes(Petal.Width, Petal.Length, shape = Species))
ggplot(diamonds) +
  geom_point(aes(carat, price, shape = cut))
