install.packages("magrittr")
#Load the package
library(tidyverse)
library(magrittr)

#1 Create a new variable bmi = weight/(height/100)^2
health %>% 
  mutate(bmi = weight/(height/100)^2)

#2 Summarise the average weight for males over 30 years old
health %>% 
  filter(gender == "M" & age > 30) %>% 
  summarise(avg_weight = mean(weight))

#3 Arrange the data by age (oldest first) and extract the last row
health %>% 
  arrange(desc(age)) %>% 
  slice(n())

#Training
iris %>% arrange(Petal.Length) %>% slice(7)
iris %>% filter(Petal.Width == 0.4) %>% distinct(Species)
iris %>% group_by(Species) %>% summarise(avg_SepalLength = mean(Sepal.Length))
