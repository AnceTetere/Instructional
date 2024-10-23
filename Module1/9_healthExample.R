library(magrittr)

#1 Renaming variables can be done with rename(new name = old name)
health %>% rename(AGE = age, GENDER = gender, HEIGHT = height)

#2 Combining slice() with which.max() or which.min() is useful 
#  to find all max/min values in a variable (e.g., maximum height)
health %>% slice(which.max(height))

#3 If there is more than 1 max/min value the above code will return multiple rows.
#  If we just want a single max/min we can combine slice() with arrange()
#  to take only the top row in the sorted data.
health %>% arrange(desc(height)) %>% slice(1)

#4 na.rm = TRUE is useful for calculations associated with summarise().
#  For example, mean(), sum(), sd() etc.
#  Removing NAs (na.rm = TRUE) avoids R simply returning NA on calculations with the data containing NAs.
health2 <- health %>% add_row(gender = "F", age = 34, weight = 60, height = NA) #adds a new row
                                                                                #with NA in the height variable
health2 %>% summarise(av_height = mean(height)) #Cannot calculat ethe mean: NA is returned
health2 %>% summarise(av_height = mean(height, na.rm = TRUE)) #R can now calculate mean with NA removed.

#5 transmutate() is the same as mutate(), 
#  however, it automatically only keeps (only selects) the new variables
#  and discards all the original.

#6 Re-ordering column position can be done using select().
#  For example, we might want to order health columns from left to right
#  in the following order: age, gender, height, weight).
health %>% select(age, gender, height, weight)

#  If we only care about 'age' being first,
#  we can use everything() to ensure all other variables are included.
health %>% select(age, everything())
