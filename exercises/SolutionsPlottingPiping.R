## Exercises - Piping

# 1. Rewrite the following code using %>% and %<>%:

x <- 2
round(log(x))


x <- 2
x %<>% log %>% round

# 2. Rewrite the second line of following code:

x <- rnorm(10,100)
round(sum(sqrt(x)), 3)



x %>% sqrt %>% sum %>% round(3)

## Plotting

# 1. Choose a set of data from your background. 
# Decide for one of the presented plotting-libraries.
# Create a plot and add a title and custom x and y labels.
# In case you plotted multiple lines, add a legend.
# Try to find out, how you can change the fontsize of the axis-labels.

# 2. Automatically save your plot to a given destination  

# 3. Try to make your code more abstract and useful. 
# Put your code within a function.
# - use the file-name (destination) as a parameter
# - In case you have multiple covariate, 
# use the covariate(s) to be plotted as input parameter
# - In case it makes sense to subset your data, introduce
#    a parameter for the choice of the subset.

# Always have in mind: if something goes wrong, you can use debugging.

## Loops and functions again
# If you have some code you wrote in the past 
# for some exercise, for your studies, for your work...
# See if you can find pieces of code which you 
# just copied and pasted multiple times (don't worry, this is normal)
# Try to transform the code using loops and functions
