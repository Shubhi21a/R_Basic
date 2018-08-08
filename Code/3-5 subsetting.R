x<-c("a","b","c","d","e")
x
x[c(1,5)]
x[1]
Games
Games[1:3,6:10]
Games[c(1,10),]
Games[,c("2009","2010")]
# so far, we're subsetting the Games matrix, and getting a matrix
Games[1,]
# this one is not a matrix, it's a vector
is.matrix(Games[1,])
is.vector(Games[1,])
Games[1,5]
# again a vector. R assumes you want a vector, and hence results that

#to fix it to get a matrix, we do:

Games[1, ,drop=F]
# now it is a matrix
Games[1,5,drop=F]

# ------------- seeing importance of subsetting---------------- #


matplot(t(MinutesPlayed), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=F )


data<-MinutesPlayed[1:3,]
matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1:3],col=c(1:4,6),pch=15:18,horiz=F )
# for legend, we made it Players[1:3] since we are plotting just them 
data
t(data)

# on running this, we see the importance of drop while subsetting
data<-MinutesPlayed[1,]
matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],col=c(1:4,6),pch=15:18,horiz=F )

# to fix this, we go:
data<-MinutesPlayed[1,,drop=F]
matplot(t(data), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],col=c(1:4,6),pch=15:18,horiz=F )


