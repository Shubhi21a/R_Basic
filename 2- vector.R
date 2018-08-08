MyFirstVector<-c(3,45,56,732)
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
# the way R processes integers is that by default it stores integers as double, hence False
is.double(MyFirstVector)
v2<-c(12L,243L,0L) # L added after numbers, to store values as int, without decimal places
is.numeric(v2)
is.integer(v2)
v3<-c("a","823","Hello")
is.character(v3)
# vector can only have values of same data types
v4<-c("a",23,"y0",11)
v4
# all values of v4 have a " " around them, all converted to character

# two more functions
seq() # sequence, similar to :
rep() # Replicate

seq(1,15) #seq(start,end)
# same as 1:15
1:15
# Why use sequence when you have : 
# Sequence gives more flexibility
seq(1,15,2) # seq(start,end,step) ~~~~ Can't do that with : , can't define step there
z<- seq(1,15,4)
z

rep(3,20) # number 3 replicated 20 times
d<-rep(1,15)
rep(0,99)
# the [1], [49], [97] in output tell the element number
# when 0 is printed 99 times, it's split into 3 lines
# in first line, we start from the first element
# in next lines, we start from 49th and 97th element respectively
# so the last line has, 97th,98th and finally 99th element
rep("a",5)

x<-c(80,20)
y<- rep(x,5)
y
# prints vector x 5 times, so 80 20 is printed 5 times


# ~~~~~~~~~~~~~~ [] The Square Brackets ~~~~~~~~~~~~~~~


w<- c("a","b","c","d","e")
w[1] # indexation in R starts from 1
w[5]
# if we want access to all elements but the 1st one, we say
w[-1]
#!!!!!~~~~~ different from Python
w[-3]
# prints all but the 3rd element
v<-w[-3]
v
w[1:3] # 1:3 is a vector, it is used to tell w, which elements are to be printed

w[c(1,3,5)]  #1st, 3rd & 5th element
w[seq(1,5,2)] # element 1 to 5, with step of 2
w[c(-2,-4)] # all but 2nd & 4th element
w[-3:-5] # NOT to print 3rd to 5th element
w[1:2] # same as above

w[0]

w[-7] # if we say -7, where 7 is greater than number of elements, it prints all elements
w[-6] # since we aren't really mentioning anything that's possible to be excluded
w[-5] #  for vector  of lenght n, if we say vector[-n+x], where x>=1, we get all elements
w[-8]
