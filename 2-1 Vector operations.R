# +,-,*,/,>,< for two vectors, element wise can be done simply in R
# just add the symbols
# R does recycling of vectors
# n of larger vector must be a multiple of n of smaller vector, & R will recycle values
# if n is not a multiple, recycling  still happens, but with a WARNING

# A lot of functions take vector values
# function can also return vectors
# vectors are building blocks of R, so everything happens smoothly

a<- c(1,2,3)
b<-c(10,20,30)
c<- a+b
c
d<- a-b
d
e<-(a*b)
e
f<-b/a
f
g<-b>a
g
h<-b>(a*20) # this works! :) 
h
i<- b> (a[1]*1,a[2]*15,a[3])  # this doesn't work
i<- (b[1],b[2],b[3])> (a[1]*1,a[2]*15,a[3]) # this neither

v1<- c(1,2,3)
v2<-c(10,20,30,40,50,60) # 10+1,20+2,30+3, then again, 40+1,50+2,60+3
v3<-v1+v2
v3
v4<- v2/v1
v4 # similarly, later, 40/1, 50/2, 60/3

a1<- c(1,2,3)
a2<-c(10,20,30,40)
a3<- a1+a2 # shows warning, but recycles
a3
