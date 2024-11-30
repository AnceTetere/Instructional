library(tidyverse)
library(magrittr)

#Default
ggplot(diamonds) +
  geom_bar(aes(cut))

#Colour border depending on the cut
ggplot(diamonds) +
  geom_bar(aes(cut, colour = cut))

#Colour dependend on the cut
ggplot(diamonds) +
  geom_bar(aes(cut, fill = cut))

#Stacked colours
ggplot(diamonds) +
  geom_bar(aes(cut, fill = clarity))

#Next to each other
ggplot(diamonds) +
  geom_bar(aes(cut, fill = clarity), position = "dodge")

#Bringing in the y-axis
ggplot(diamonds)+
  geom_bar(aes(cut, price), stat = "identity")

ggplot(diamonds) +
  geom_bar(aes(cut, price, fill = clarity), stat = "identity", position = "dodge")

#Using the iris dataset
ggplot(iris) +
  geom_bar(aes(Species))

ggplot(iris) +
  geom_bar(aes(Species, fill = Species))

ggplot(iris) +
  geom_bar(aes(Species, Petal.Length, fill = Species), stat = "identity")
