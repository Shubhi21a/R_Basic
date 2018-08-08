# basic operations with a DF (data frame)

#1. subsetting
stats[1:10,]
stats[3:9,]
stats[c(4,100),]

# 2 Remember
stats[1,]
# in matrix, when we asked for just one row, it dropped the other dimension
# and turned the row into a vector

is.data.frame(stats[1,])
# it stays a dataframe, don't have to say drop=F

stats[,1]
is.data.frame(stats[,1])
# no, it is turned into a vector; we'll have to use drop=F
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])


# to see mathematical operations
stats$Birth.rate*stats$Internet.users
# makes no sense, just to try the mathematical operations
stats$Birth.rate+stats$Internet.users

# adding a column
stats$mycalc<- stats$Birth.rate*stats$Internet.users # we pretend that the column exists
head(stats)
stats$xyz<-1:5
head(stats,n=10)
# it recycles the values , the n of dataset should be a multiple of total values input 
# here 195 rows in total, our input was of 5 values

# let's try
stats$try<-1:7
# we get an error since 195 is not a multiple of 7

# remove a column ~~~~~~~~~~~~~~~
stats$xyz<-NULL
stats$mycalc<-NULL
head(stats)
