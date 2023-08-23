## Exercises about data types

# 1. Create following sequences: 
# 4, 8, 12, 16, 20, 24, 28
# 10, 8, 6, 4, 2, 0
# repeat "chocolate" 10 times in a vector

seq(4,28,4)
seq(10,0,-2)
rep("chocolate", 10)


# 2. Starting with the following code...:

a <- "5555555"
b <- 3


c <- as.numeric(a) / b


# 3. Starting with following code, create the filename "group3trial1.csv"

group <- 3
trial <- 1

paste("group", group, "trial", trial, ".csv", sep="")


## Exercises about data frames

# 1. Read the data "allForarexData.csv"
flight <- read.table("allForarexData.csv", header = T, sep = ",")

# 2. Convert Exp0_OxygenTemp and Exp1_OxygenTemp. Devide by 1000. Save the result in the same column.
flight$Exp0_OxygenTemp <- flight$Exp0_OxygenTemp/1000
flight$Exp1_OxygenTemp <- flight$Exp1_OxygenTemp/1000

# 3. What are the means of Exp0_OxygenTemp and Exp1_OxygenTemp?
mean(flight$Exp0_OxygenTemp)
mean(flight$Exp1_OxygenTemp)

# 4. Save the timestamp in the correct format. The time was measured in seconds.
flight$timeStamp <- as.POSIXct(flight$timeStamp, origin="1970-01-01")

# 5. When was the first measurement? When was the last measurement?
min(flight$timeStamp)
max(flight$timeStamp)

# 6. Create a subset containing only data measured after 2019-03-09 10:25:52.

# hint: You might have to use "as.POSIXct("2019-03-09 10:25:52")" for the boolean expression.

flight.subtime <- flight[flight$timeStamp>as.POSIXct("2019-03-09 10:25:52"),]

# update: actually this works as well, so no need for as.POSIXct


flight.subtime <- flight[flight$timeStamp>"2019-03-09 10:25:52",]


# 7. Difficult: Exclude columns, where all measurements are the same. 

# hint: one option is using: sapply(flight, function(x){min(x)!=max(x)})

ncol(flight)
flight.sub <- flight[, sapply(flight, function(x){min(x)!=max(x)})]
ncol(flight.sub)

## Exercises about both data frames and data types

# Use beedata.csv

# 1. Select the lines of the bee data set where the hive number is 13 or 14.

df.13or14 <- df[df$hive==13|df$hive==14,]


# 2. What are the classes of the beedata's columns hive and t_i_1?

class(df$hive)
class(df$t_i_1)

# 3. Difficult: How can you print the classes of all columns?

lapply(df, class)
