## Exercises - Conditions

# 1. Imagine somebody tells you the age of two of her friends,
# Ali and Bea. If Ali is older than Bea print 
# "Ali is older than Bea.". If Bea is older than Ali,
# print "Bea is older than Ali.".

Ali <- 5555/111
Bea <- 10*5

if (Ali>Bea){
  print("Ali is older than Bea.")
} else{
  print("Bea is older than Ali.")
}

# 2. The price of a small bar of chocolate is 1 Euro. 
# For a medium bar of chocolate you have to pay 3 Euros 
# and for a large bar you have to pay 5 Euros.
# Somebody tells you how much money she has. 
# Tell her, how much chocolate she can buy 
# (Eg. print "You can buy a small bar of chocolate.")
# She does not want to buy more than one bar of chocolate, 
# but the largest possible.

money <- 14/3

if (money >= 5){
  print("You can buy a large bar of chocolate.")
} else if (money >= 3){
  print("You can buy a medium bar of chocolate.")
} else if (money >= 1){
  print("You can buy a small bar of chocolate.")
} else{
  print("Sorry, you can't buy any chocolate.")
}

## For and While

#  1. Loop from 1 to 15 and print the square-root of 
# each number

for (i in 1:15){
  print(sqrt(i))
}

# 2. The function "rbinom(1,1,0.9)" models a very unfair
# coin, which shows the head (1) with a probability 
# of 90 %. Flip this coin until you get tail (0). 
# Count how many times you flipped the coin.

coin <- 1
index <- 0
while (coin!=0){
  coin <- rbinom(1,1,0.9)
  index <- index +1
}
index

# or

index <- 0
repeat{
  coin <- rbinom(1,1,0.9)
  index <- index +1
  if(coin==0){
    break
  }
}
index

# 3. Repeat each character of the string "Summer" 3 times.
# Combine all characters to a new string. 

# hint:  Check out the functions "substr" and "nchar".

s <- "summer"
s1 <- ""
for(i in 1:nchar(s)){
  for(j in 1:3){
    s1 <- paste(s1, substr(s, i, i), sep = "")
  }
}
s1


# 4. Difficult: Read in all files in the directory 
# "forarexData" and combine them to a single data frame.

# hint:  Useful functions: list.files, try or try-catch, rbind

dir <- "forarexData/"
files <- list.files(dir)
files <- paste(dir, files, sep="")

df<-data.frame()

for (i in 1:length(files)) {
  tmp <- read.csv(file = files[i])
  df <- rbind(df,tmp)
}

### Exercises: Functions

# 1. In one of the previous tasks you wrote some code to
# Repeat each character of the string "Summer" 3 times.
# Convert it into a function. It should take two parameters:
# - a string, e.g. “summer”.
# - A number, e.g. 3 to specify how often each letter 
#   should be repeated.
# Use “summer” and 3 as default values.
# hint: in case you did not find the solution. This is the solution:

# Watch out this is a solution for another task!


s <- "summer"
s1 <- ""
for(i in 1:nchar(s)){
  for(j in 1:3){
    s1 <- paste(s1, substr(s, i, i), sep = "")
  }
}
s1

funny.words <- function(word=summer, repeat.times=3) {
  s1 <- ""
  for(i in 1:nchar(word)){
    for(j in 1:repeat.times){
      s1 <- paste(s1, substr(word, i, i), sep = "")
    }
  }
  return(s1)
}

# 2. We look at the data from the beehives again. 
# Given a beehive, how many observations do we have
# for that beehive? How many observations are missing
# in the column “weight_kg”? Write a function for this
# problem. Return both values in a named list.
# Use the dataframe and the hive number as input parameters.

df <- read.csv("beedata.csv")

beehive.info <- function(df, hive){
  sub <- df[df$hive==hive,]
  n <- nrow(sub)
  missing <- sum(is.na(sub$weight_kg))
  return(list(n=n, missing=missing))
}
beehive.info(df, 4)
beehive.info(df, 13)

# 3. In a previous exercise, you wrote some code to read
# in all files within a directory. 
# Convert the code to a function.


combine <- function(dir="forarexData/", finalName="forarexCombined.csv"){
  # Purpose: the function can combine the files and save to a new csv
  # Parameters:
  #  dir: the directory of the files to be combined
  #  finalName: the name of the file to be used to save the csv
  
  # list all files in directory
  files <- list.files(dir)
  files <- paste(dir, files, sep="")
  
  df<-data.frame()
  
  for (i in 1:length(files)) {
    tmp <- read.csv(file = files[i])
    df <- rbind(df,tmp)
  }
  write.csv(df, finalName)
}

combine()

### Other option with try

combine.try <- function(dir="forarexData/", finalName="forarexCombined.csv"){
  # Purpose: the function can combine the files and save to a new csv
  # Parameters:
  #  dir: the directory of the files to be combined
  #  finalName: the name of the file to be used to save the csv
  
  # list all files in directory
  files <- list.files(dir)
  files <- paste(dir, files, sep="")
  
  df<-data.frame()
  
  for (i in 1:length(files)) {
    try({
      tmp <- read.csv(file = files[i])
      df <- rbind(df,tmp)
    })
  }
  write.csv(df, finalName)
}
combine.try()

# option with trycatch, in case some files are completly screwed up

combine.trycatch <- function(dir="forarexData/", finalName="forarexCombined.csv"){
  # Purpose: the function can combine the files and save to a new csv
  # Parameters:
  #  dir: the directory of the files to be combined
  #  finalName: the name of the file to be used to save the csv
  
  # list all files in directory
  files <- list.files(dir)
  files <- paste(dir, files, sep="")
  
  df<-data.frame()
  
  for (i in 1:length(files)) {
    tryCatch({
      tmp <- read.csv(file = files[i])
      df <- rbind(df,tmp)
    },
    warning = function(warning_condition){
      print(paste("Some weird formatting in file", files[i]))
      print(warning_condition)
    },
    # handling of errors, if there was some wrong formating
    error = function(error_condition){
      print(paste("Skipping file", files[i]))
      print(error_condition)
    })
  }
  write.csv(df, finalName)
}
combine.trycatch()
