library(tidyverse)

ggplot(mpg) +
  geom_point(aes(displ, hwy)) +
  facet_wrap(~manufacturer, nrow = 2)

ggplot(mpg) +
  geom_point(aes(displ, hwy)) +
  facet_grid(drv~class)