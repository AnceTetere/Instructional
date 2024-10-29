library(tidyverse)
library(magrittr)

#Construct the hogwarts data
grf <- c(2678,978,23)
sly <- c(3476,1002,34)
rav <- c(2445,889,54)
huf <- c(1998,700,512)
activity <- c("Quiddich", "Duelling", "Potions")
hogwarts1 <- tibble(activity, grf, sly, rav, huf)
rm(activity, grf, sly, rav, huf)

hogwarts1

#Using the hogwarts1 data, find the house (sly, gry, rav or huf)
#with the highest average number of points across the 3 activities.

hogwarts1 %>% gather(grf, sly, rav, huf, key = "House", value = "Points") %>% 
  group_by(House) %>% 
  summarise(av_points = mean(Points)) %>% 
  slice(which.max(av_points)) %>% 
  select(House)
