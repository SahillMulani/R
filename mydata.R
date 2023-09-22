# R Data Structure
# Vectors need to of same type
subject_name <- c("John Doe","Jane Doe", "Shivam")
temprature <- c(98.6,99.5,101.4)
flu_staus <- c(FALSE,FALSE,TRUE)

# Range in R
temprature[2:3]

# To exlcude any item number
temprature[-2]

# You can soecify Logical Vectors Indicating whether to include each item or not
temprature[c(TRUE,TRUE,FALSE)]

# Factors can be used to create nominal Data Types such as
# Genders , Blood Types 
gender <- factor(c("MALE","FEMALE","MALE"))
blood <- factor(c("O","AB","A"),
         levels = c("A","B","AB","O"))

#List
# List can contain elements of different type

subject_1 <- list(fullname = subject_name[1],
                  temprature = temprature[1],
                  flu_staus = flu_staus[1],
                  gender = gender[1],
                  blood = blood[1])

# Data Frame
# Data is list of Vectors or Factors
pt_data <- data.frame(subject_name, temprature, flu_staus, gender, blood, stringsAsFactors = 
                        FALSE)

# To extract entire column , we can use column names
pt_data$subject_name
pt_data$temprature

# A vector of names can be used to extract several columns from a data frame
pt_data[c("temprature","flu_staus")]

#To extract value of First row and Second Column
pt_data[1,2]

#To pull data from Rows 1 & 3 and column 2 & 4
pt_data[c(1,3),c(2,4)]

#To pull data for entire rows of specific columns or vice-verse
pt_data[,1]
pt_data[1,]

#To extract everything
pt_data[]

#Matrix and Arrays
# Matrix can store only signle type of Data and therefore are mostly 
# used for Mathematical Operations

a <- matrix(c("A","B","C","D"), nrow = 2)
# R loads the first column of the matrix first and the second column
# This is called Column Major Ordering

# Same notation is used in Matrix as well [Row,Column]
# a[1,2] will load first row and second column

# Read CSV File in R
usedcars <- read.csv("usedcars.csv", stringsAsFactors = FALSE)

#Summary of Year
summary(usedcars$year)

#Summary of Price and Milage
summary(usedcars[c("price","mileage")])

#Mean and Median
mean(c(4,5,6))

#Range
# Range is span between minimum and maximum value
range(usedcars$price)

diff(range(usedcars$price))

IQR(usedcars$price)

quantile(usedcars$price)

#Visualizing numeric variables - boxplots

boxplot(usedcars$price, main="Boxplot of Used Car Prices", ylab="Price ($)")

boxplot(usedcars$mileage, main="Boxplot of Used Car Mileage", ylab="odometer (mi)")

#Visualizing numeric variables - histograms
hist(usedcars$price, main = "Histogram of Used Car Price", xlab = "Price ($)")

hist(usedcars$mileage, main = "Histogram of Used Car Mileage", xlab = "odometer (mi.)")p
