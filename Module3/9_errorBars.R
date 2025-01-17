library(tidyverse)

df <- ToothGrowth %>% group_by(dose, supp) %>% 
  summarise(mean = mean(len), n = n(), sd = sd(len)) %>% 
  mutate(se = sd/sqrt(n)) %>% 
  mutate(ci = qt(0.05/2, n-1, lower.tail = FALSE))

ggplot(df, aes(x=dose, y=mean, colour = supp)) +
  geom_point()+
  geom_line()+
  geom_errorbar(aes(ymin = mean - ci, ymax = mean +ci, width = 0.1)) +
  ggtitle("Mean tooth length per supplement dose. \n Error = 95% confidence.")
