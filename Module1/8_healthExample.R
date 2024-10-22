library(tidyverse)

gender <- c("F", "M", "F", "M", "M", "M", "Not disclosed", "M")
age <- c(67,40,23,26,34,55,42,18)
health_a <- tibble(gender, age)
rm(gender, age)

years_old <- c(29,67,40,23,34,55,42,18,73)
weight <- c(52,65,80,57,71,67,78,85,50)
height <- c(165,171,183,154,167,169,180,190,145)
health_b <- tibble(years_old, weight, height)
rm(years_old, weight, height)

health_a
health_b

#1 Join the two data sets, preserving all rows in both data sets
full_join(health_a, health_b, by = c("age" = "years_old"))

#2 Join the two data sets, preserving only the matching rows of the two data sets
inner_join(health_a, health_b, by = c("age" = "years_old"))

#3 Join the two data sets, preserving all rows in health_a but not from health_b
left_join(health_a, health_b, by = c("age" = "years_old"))

#4 Join the two data sets, preserving all rows in health_b but not from health_a
right_join(health_a, health_b, by = c("age" = "years_old"))

#TRAINING