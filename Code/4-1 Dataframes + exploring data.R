# Dataframes and matrices are both 2 dimensional objects
# in matrix, all inputs should have same data type
# Dataframes can have any mix of data types ~~~`

# Method 1: Select the file manually
stats<- read.csv(file.choose()) #~~~~ I like this better, no need to type the path ~~ #
stats

# Method 2: Set WD and read data
getwd()
setwd("C:\\Users\\Student\\Desktop\\Data Science Apps\\Courses\\Udemy\\R_Basic")
getwd()
rm(stats) # removes variable !!!
stats<-read.csv("DemographicData.csv")
stats

# ------------------ Exploring Data ---------------------- #

# below are the functions: 
# ------ 1.nrow  2.ncol  3.head  4.tail  5.str  6. summary  ----- #

nrow(stats) # no of rows
ncol(stats) # no of columns
head(stats) # tells the top 6 rows
tail(stats) # bottom 6 rows
head(stats,n=10) # to see top 10 rows
str(stats) # a good de-brief of the dataset
# income group, factor  with 4 levels: a categorical data with 4 categories of data
# we might want to group our data with this factor later
# it has assigned value 1 to the first income group (for 1st row) ie high income
# value 2 for 2nd row- Afganistan, ie low income group
# 4 for third, Angola- upper middle income so on

summary(stats)

# -------------- Using the $ sign ------------------ # 
stats[3,3]
stats[3,"Birth.rate"]
# can't say stats["Angola",3] since country name is not the row's name
# will give output NA

# This is similar to excel
# in excel, you have column names, but you don't have  names for Rows

# $ sign is another way to access columns in Dataframes
# $ doesn't work in matrices

stats$Internet.users # same as stats[,"Internet.users"]
# returned vector with all values of internet users

stats$Internet.users[3]

str(stats)
# $ Income.Group  : Factor w/ 4 levels "High income",..: 1 2 4 4 1 1 3 1 1 1 ...


levels(stats$Income.Group) # to see the levels of income group
