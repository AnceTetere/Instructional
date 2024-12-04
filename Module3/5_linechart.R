library(tidyverse)

#Line graph
ggplot(BOD)+
  geom_line(aes(Time, demand))

#Adding the colour
ggplot(BOD)+
  geom_line(aes(Time, demand), colour = "blue")

#Colour-coding the subject
ggplot(Indometh) +
  geom_line(aes(time, conc, colour = Subject))
