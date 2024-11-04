library(tidyverse)
library(magrittr)

#Construct the hogwarts data
Athlete <- c("John","John", "Sandra", "Sandra")
Event <- c("Long Jump", "Long Jump", "Long Jump", "Long Jump")
columnC <- c("Points","Attempts", "Points","Attempts")
columnD <- c(10,3,3,1)

sportsday <- tibble(Athlete, Event, columnC, columnD)
rm(Athlete, Event, columnC, columnD)

sportsday

sportsday %>% spread(key = "columnC", value = "columnD")
