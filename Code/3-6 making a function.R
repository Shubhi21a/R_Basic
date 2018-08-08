# we have been typing the same bunch of code for every viz
# have been copying it over and over again

# to make our job easier, we can make it a function

myplot <- function(){
  data<-MinutesPlayed[1:3,,drop=F]
  matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[1:3],col=c(1:4,6),pch=15:18,horiz=F )
  
}

# myplot is an object inside which we are putting a function
# if you drag the upper right ' enivronment' option
# under the functions tab, you now see myplot()

myplot()

# right now to make the viz look different( different players), we will have to update the original code
# the one we used while creating the function

# to make the function more useful, we add parameters

myplot <- function(rows){
  data<-MinutesPlayed[rows,,drop=F]
  matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F )
}

myplot(1:5)
myplot(1:10)
# we pass the rows we want visualized

# right now it only visualized MinutesPlayed data

myplot <- function(data,rows){
  data<-data[rows,,drop=F]
  matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F )
}

myplot(Salary,1:5)
# now we can change the data to be visualized, plus the rows too 

# setting default parameters
# if user doesn't pass any data, we visualize all rows

myplot <- function(data,rows=1:10){
  data<-data[rows,,drop=F]
  matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F )
}

myplot(Salary)
# by default, all rows visualized

myplot(MinutesPlayed/Games,3)
