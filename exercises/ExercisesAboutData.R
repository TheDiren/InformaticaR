## Exercises about data types

# 1. Create following sequences: 
# 4, 8, 12, 16, 20, 24, 28
# 10, 8, 6, 4, 2, 0
# repeat "chocolate" 10 times in a vector


# 2. Starting with the following code, divide a by b and save it as variable c:

a <- "5555555"
b <- 3


# 3. Starting with following code, create the string/ character vector "group3trial1.csv"

group <- 3
trial <- 1


## Exercises about data frames

# 1. Read the data "allForarexData.csv"

# 2. Convert Exp0_OxygenTemp and Exp1_OxygenTemp. Devide by 1000. Save the result in the same column.

# 3. What are the means of Exp0_OxygenTemp and Exp1_OxygenTemp?

# 4. Save the timestamp in the correct format. The time was measured in seconds. (origin="1970-01-01")

# 5. When was the first measurement? When was the last measurement?

# 6. Create a subset containing only data measured after 2019-03-09 10:25:52.

# 7. Difficult: Exclude columns, where all measurements are the same. 
# hint at the bottom of the file


## Exercises about both data frames and data types

# Use beedata.csv

# 1. Select the lines of the bee data set where the hive number is 13 or 14.

# 2. What are the classes of the beedata's columns hive and t_i_1?

# 3. Difficult: How can you print the classes of all columns?







# Hint
# hint "Data types", 7: one option is to check if the min value of a column equals the max value. You can use a loop or following function: sapply(flight, function(x){min(x)!=max(x)})

