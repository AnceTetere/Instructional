library("tidyverse")
library("ggplot2")

par(mfrow(1,2))

#Note the difference:
#1 aes() within ggplot() - PIC1.png
ggplot(Indometh, aes(time, conc, colour = Subject))+
  geom_point() +
  geom_smooth()

#2 aes() in the specific geom_<type>() aesthetics  - PIC2.png
ggplot(Indometh)+
  geom_point(aes(time, conc, colour = Subject))+
  geom_smooth(aes(time, conc))
