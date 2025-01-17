library(tidyverse)

#1 Summarise the data
df <- iris %>% 
  group_by(Species) %>% 
  summarise(mean = mean(Petal.Length), n = n(), sd = sd(Petal.Length)) %>% 
  mutate(se = sd/sqrt(n)) %>% 
  mutate(ci = qt(0.05/2, n-1, lower.tail = FALSE) * se)

#2 Plot the data with error bars
ggplot(df, aes(x=Species, y = mean, fill = Species)) +
  geom_bar(stat = "identity")+
  geom_errorbar(aes(ymin = mean - ci, ymax = mean + ci), width = 0.4) +
  ggtitle("Mean petal length for Iris species. Error = 95% confidence interval.")
