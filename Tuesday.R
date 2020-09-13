## Exercises - Conditions

# 1. Imagine somebody tells you the age of two of her friends,
# Ali and Bea. If Ali is older than Bea print 
# "Ali is older than Bea.". If Bea is older than Ali,
# print "Bea is older than Ali.".

Ali <- 5555/111
Bea <- 10*5

# 2. The price of a small bar of chocolate is 1 Euro. 
# For a medium bar of chocolate you have to pay 3 Euros 
# and for a large bar you have to pay 5 Euros.
# Somebody tells you how much money she has. 
# Tell her, how much chocolate she can buy 
# (Eg. print "You can buy a small bar of chocolate.")
# She does not want to buy more than one bar of chocolate, 
# but the largest possible.

money <- 14/3


## For and While

#  1. Loop from 1 to 15 and print the square-root of 
# each number

# 2. The function "rbinom(1,1,0.9)" models a very unfair
# coin, which shows the head (1) with a probability 
# of 90 %. Flip this coin until you get tail (0). 
# Count how many times you flipped the coin.

# 3. Repeat each character of the string "Summer" 3 times.
# Combine all characters to a new string. 

# hint at the bottom of this file



# 4. Difficult: Read in all files in the directory 
# "forarexData" and combine them to a single data frame.

# hint at the bottom of this file


### Exercises: Functions

# 1. In one of the previous tasks you wrote some code to
# Repeat each character of the string "Summer" 3 times.
# Convert it into a function. It should take two parameters:
# - a string, e.g. “summer”.
# - A number, e.g. 3 to specify how often each letter 
#   should be repeated.
# Use “summer” and 3 as default values.

# hint at the bottom of this file


# 2. We look at the data from the beehives again. 
# Given a beehive, how many observations do we have
# for that beehive? How many observations are missing
# in the column “weight_kg”? Write a function for this
# problem. Return both values in a named list.
# Use the dataframe and the hive number as input parameters.

# 3. In a previous exercise, you wrote some code to read
# in all files within a directory. 
# Convert the code to a function.








# Hints


# Watch out, spoiler alert!

# hint "For and While", 3:  Check out the functions "substr" and "nchar".





# hint "For and While", 4:  Useful functions: list.files, try or try-catch, rbind



# hint "Functions" 1: in case you did not find the solution. This is the solution:

# Watch out this is a solution for another task!


s <- "summer"
s1 <- ""
for(i in 1:nchar(s)){
  for(j in 1:3){
    s1 <- paste(s1, substr(s, i, i), sep = "")
  }
}
s1
