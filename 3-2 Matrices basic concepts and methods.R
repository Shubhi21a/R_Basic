# in R, tables are stored in matrices. Mostly data is in form of tables
# ---------- Matrix can have elements of ONLY ONE data type, like vectors --------------

# MATRIX() - Takes a vector and bends it into a matrix
# populates column wise

# rbind() - takes vectors of same length
# attaches vectors one below the other, row wise 
# row 1  row 1
# row 2  row 2

#cbind()-  Attaches columns side by side, to form a matrix
# Col 1   Col2 
# Col 1   Col2

my.data <- 1:20
my.data
a<- matrix(my.data,4,5) # no of rows, no of columns
a

b<-matrix(my.data,4,5,byrow=T) # can type either T or TRUE
b
# this time, first one row is filled, then we move on to the next row

# ------- Rbind --------
r1<-c("I","am","happy")
r2<- c("what","a","day")
r3<-c(1,2,3)
c<-rbind(r1,r2,r3)
c # 1, 2, 3 converted to char

#----- cbind----------
c1<-1:5
c2<--1:-5
d<-cbind(c1,c2)
d

#------------ Naming Dimensions ------------- #

# Giving rows and columns names
# whatever you use to name the row, column headings, it will be converted into a char

# let's say you named rows: 2008,2012,2016,2020
# and columns: GDP, Population etc. 
# you will call details as WorldData["2012","GDP"]
# even numbers are char

# you can also call them by their indices, in this case WorldData[2,1]

# or you can call by using a combination of index and the header name
#e.g., WorldData[2,"GDP] or ["2012,1]
# header name always has to be in " " though

