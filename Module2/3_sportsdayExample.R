library(tidyverse)
library(magrittr)

#Construct the hogwarts data
Athlete <- c("John","John", "Sandra", "Sandra")
Event <- c("Long Jump", "Long Jump", "Long Jump", "Long Jump")
columnC <- c("6/3","5/2", "10/3","5/3")

sportsday <- tibble(Athlete, Event, columnC)
rm(Athlete, Event, columnC)

sportsday

sportsday %>% separate(columnC, into = c("Points", "Attempts"), sep = "/")