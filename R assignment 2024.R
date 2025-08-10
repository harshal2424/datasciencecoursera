# Practical Assignment 1

# 1. Write a program to compute following mathematical expressions:
# (a) ( 27(38-17))
print(27*(38-17))

# (b) ( ln(147)) (ln is log to the base e)
print(log(147))

# (c) ( 436^{12})
print(436^12)

# 2. Write an R program to create a sequence of numbers from 20 to 50 and calculate their sum.
sequence <- 20:50

sum_of_sequence <- sum(sequence)

print(paste("The sequence is:", paste(sequence, collapse = ", ")))
print(paste("The sum of the sequence is:", sum_of_sequence))


# 3. Write a program to reverse the characters in a string.
# Input string
input_string <- "Hello, World!"

# Reverse using indexing
reversed_string <- ""
n <- nchar(input_string)  # Get the length of the string

# Iterate through the string in reverse order
for (i in n:1) {
  reversed_string <- paste0(reversed_string, substr(input_string, i, i))
}

# Print the results
print(paste("Original String:", input_string))
print(paste("Reversed String:", reversed_string))


# 4. Write a program to extract a substring from a given string. 
given_string<- "Hello world"

substring1 <- substring(given_string,1,5)
print(substring1)

substring2 <- substring(given_string,6,11)
print(substring2)


# Practical Assignment 2

# 1. Write a program to find the square root and cube root of numbers from a given vector.
# a) square root of vector
number_vector<- c(1,2,4)
print("square root of vector is follows:")
print(sqrt(number_vector))
# b) cube root of vector
print("cube root of vector is follows:")
print(number_vector^(1/3))

# 2. Write a program to check if a given number is prime or non prime using conditional statements.

# Input: Accept a number from the user
number <- as.integer(readline(prompt = "Enter a number: "))

# Check if the number is less than or equal to 1
if (number <= 1) {
  cat(number, "is not a prime number.\n")
} else if (number == 2) {
  cat(number, "is a prime number.\n")
} else {
  # Check divisibility by numbers from 2 to sqrt(number)
  is_prime <- TRUE
  for (i in 2:sqrt(number)) {
    if (number %% i == 0) {
      is_prime <- FALSE
      break
    }
  }
  
  # Output the result
  if (is_prime) {
    cat(number, "is a prime number.\n")
  } else {
    cat(number, "is not a prime number.\n")
  }
}

# 3. Write a program to take 2 matrices and perform their addition.

matrix1=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol=3, byrow  =FALSE)
print(matrix1)
matrix2=matrix(c(9,8,7,6,5,4,3,2,1),nrow=3,ncol=3,byrow = TRUE)
matrix2
Addition_matrix<- (matrix1+matrix2)
print(Addition_matrix)


# Practical Assignment 3

# 1. Write a function to calculate the factorial of a number using a loop.

factorial <- function(x) {
  if (x == 1 | x == 0) {
    return(1)
  } else {
    return(x * factorial(x - 1))
  }
}

# Prompt the user for input outside the function
x <- as.numeric(readline("Enter the number: "))
result <- factorial(x)
print(result)


# 2. Write a function to determine whether a given year is a leap year.

leap_year <- function(x){
  if(x%%4 == 0){
    print("This is leap year")
  }else{
    print("This is not leap year")
  }
}

x<- as.numeric(readline("Enter the Year:"))
result <- leap_year(x)
print(result)


# Practical Assignment 4
# Load the 'iris' dataset and perform the following:
data(iris)

library(dplyr)
# 1. Filter rows where the value of the column Sepal.Length is greater than 6

grater_than_6<-iris[iris1$Sepal.Length > 6, ]

print(grater_than_6)

# 2. Create a new column in the dataset called Sepal.Length.Squared, which contains the square of the
#    Sepal.Length values.

iris$Sepal.Lenght.sqaure = iris$Sepal.Length^2

print(iris)

# 3. Summarise the dataset.
print(summary(iris))

# 4. Sort the dataset by:
#      Sepal.Length in ascending order.
#      Petal.Length in descending order.

# a)
sepal_ascending <- iris[order(iris$Sepal.Length),]

print(sepal_ascending)

# b) 
Petal_descending <- iris[order(iris$Petal.Length,decreasing = TRUE),]

print(Petal_descending)

# 5.Group the dataset by the column Species and calculate the mean of the Sepal.Length for each species.

library(dplyr)

grouped_data <- iris %>%
  group_by(iris$Species) %>%
  summarise(across(everything(), mean, na.rm = TRUE))

print(grouped_data)



# Practical Assignment 5: Data Manipulation with dplyr

# Load the 'mtcars' dataset and perform the following:
data("mtcars")

# 1. Filter rows where horsepower (hp) is greater than 100.

greater_than_100<- mtcars[mtcars$hp>100, ]

print(greater_than_100)

# 2. Create a new column with the square of horsepower (hp).

mtcars$hp.sqaure = mtcars$hp^2

print(mtcars)

# 3. Calculate mean and standard deviation of miles per gallon (mpg).
# a)
mpg.mean<- mean(mtcars$mpg)

print(mpg.mean)

# b) 
mpg.std<- sd(mtcars$mpg)
print(mpg.std)

# 4. Sort by mpg (ascending) and hp (descending).
# a)
library(dplyr)
mpg_ascending <- mtcars[order(mtcars$mpg),]
print(mpg_ascending)

# b)
hp_descending <- mtcars[order(mtcars$hp, decreasing= TRUE), ]
print(hp_descending)

# 5. Group by number of cylinders (cyl) and calculate mean mpg for each group.

library(dplyr)

grouped_data <- mtcars %>%
  group_by(mtcars$cyl) %>%
  summarise(across(everything(), mean, na.rm = TRUE))

print(grouped_data)



# Practical Assignment 6: Statistical Analysis with R

# 1. Write a program to generate 10 random numbers and calculate their median and mode.

random_normal <- rnorm(10)
print(random_normal)

# calculate mean

random_normal_mean <- mean(random_normal)
print(random_normal_mean)

# calculate median

random_normal_median <- median(random_normal)
print(random_normal_median)

random_normal_mode <- mode(random_normal)
print(random_normal_mode)

# 2. Load 'ChickWeight' dataset and write a program to calculate the correlation coefficient between two
#    numerical variables 'weight' and 'Time'.

data(ChickWeight)

correlation_coefficient <- cor(ChickWeight$weight, ChickWeight$Time)
print(correlation_coefficient)

# 3. Load 'ChickWeight' dataset and write a program to create a frequency table for a categorical variable 'Diet'

# Load the ChickWeight dataset
data(ChickWeight)

# Create a frequency table for the Diet variable
diet_frequency_table <- table(ChickWeight$Diet)

# Print the frequency table
print(diet_frequency_table)

# 4. Write a program to find the mean of numbers from 20 to 60.
numbers<- 20:60
mean_20to60 <- mean(numbers)

print(mean_20to60)

# 5. Write a program to compute the range of the 'weight' column from a 'ChickWeight' dataset.

range_weight <- range(ChickWeight$weight)
print(range_weight)


# Practical Assignment 7: Visualizing Data Using the 'AirPassengers' Dataset

# 1. Create a Bar Plot:
#    Convert the dataset into a format that allows grouping by year.
#    Create a bar plot to visualize the total number of passengers per year.
#    Label the axes and add a title to the plot.

# Load the AirPassengers dataset
data("AirPassengers")

library(zoo)

# Convert the dataset into a data frame and extract the year
air_passengers_df <- data.frame(
  Year = as.numeric(format(as.yearmon(time(AirPassengers)), "%Y")),
  Passengers = as.numeric(AirPassengers)
)

# Group by year and calculate the total number of passengers per year
total_passengers_per_year <- aggregate(Passengers ~ Year, data = air_passengers_df, sum)

# Create a bar plot
barplot(total_passengers_per_year$Passengers,
        names.arg = total_passengers_per_year$Year,
        main = "Total Number of Passengers per Year",
        xlab = "Year",
        ylab = "Total Passengers",
        col = "blue")

print(air_passengers_df)
print(AirPassengers)
print(total_passengers_per_year)
# 2. Create a Scatter Plot:
#   Plot the number of passengers (Passengers) against the time period (Time).
#   Use points to represent the data and ensure the axes are properly labeled.


# Convert the time series data to a data frame
air_data <- data.frame(Time = time(AirPassengers),
                       Passengers = as.numeric(AirPassengers))

# Create the scatter plot
plot(air_data$Time, air_data$Passengers,
     main = "Scatter Plot of Air Passengers Over Time",
     xlab = "Time (Year)",
     ylab = "Number of Passengers",
     pch = 19,     # Use solid circle points
     col = "blue") # Color the points blue

print(air_data)

# 3. Create a Histogram:
#   Create a histogram to display the frequency distribution of the number of passengers (Passengers).
#   Choose appropriate bin sizes and label the axes.

# Convert the dataset into a numeric vector
passengers <- as.numeric(AirPassengers)

# Create a histogram
hist(passengers,
     main = "Frequency Distribution of Number of Passengers",
     xlab = "Number of Passengers",
     ylab = "Frequency",
     col = "blue",
     breaks = 10)  # Adjust the number of bins as needed


# 4. Create a Boxplot:
#    Create a boxplot to compare the distribution of the number of passengers across the years.
#    Label the x-axis as Year and y-axis as Passengers.



# Load the necessary packages
library(zoo)

# Load the AirPassengers dataset
data("AirPassengers")

# Convert the dataset into a data frame and extract the year
air_passengers_df <- data.frame(
  Year = as.numeric(format(as.yearmon(time(AirPassengers)), "%Y")),
  Passengers = as.numeric(AirPassengers)
)

# Create a boxplot
boxplot(Passengers ~ Year, data = air_passengers_df,
        main = "Distribution of Number of Passengers Across Years",
        xlab = "Year",
        ylab = "Passengers",
        col = "lightblue")


# 5. Create a Line Graph:
# Plot the time-series data (Time vs. Passengers) using a line graph to show the trend in passenger counts over the years.
# Add grid lines and a title to make the graph more informative.



# Convert the time series data to a data frame
air_data <- data.frame(Time = time(AirPassengers),
                       Passengers = as.numeric(AirPassengers))

# Create the line graph
plot(air_data$Time, air_data$Passengers,
     type = "l",                   # Use 'l' for line graph
     main = "Trend of Air Passengers Over Time",
     xlab = "Time (Year)",
     ylab = "Number of Passengers",
     col = "blue",                 # Line color
     lwd = 2)                      # Line width

# Add grid lines
grid(nx = NULL, ny = NULL, col = "gray", lty = "dotted")




















