# ? : This is how R allows you to bring up help in the bottom right quadrant
# ?FunctionName()
#shows the paramters to be passed

?rnorm()
#rnorm(n, mean = 0, sd = 1)
rnorm(5)
# by default, it takes mean=0, std. dev=1, only n doesn't have a default value
rnorm(5,10,8)
# n=5, mean=10, std.dev.=8
rnorm(n=5,mean=0,sd=8)
# another way, passing values. This way you can interchange the order too
rnorm(n=5,sd=8,mean=10)
# whatever value you don't mention, takes on the default value, if that exists

?seq()
# seq.int(from, to, by, length.out, along.with, ...)
# lenght.out : tells how my values need to be populated between the 2 numbers
# in this case, R finds the step which makes it possible
seq(from=10,to=100,length.out=100)
# we want 100 numbers between 10 & 100 ( both inclusive ), so [10,100]
# now R has to figure out the neccessary step for that to happen

x<- c("a","b","c")
seq(from=10,to=20,along.with = x)
# instead of specifying the length explicitly, we say that it should take 
# length of the vector we specified. In this case, that is 3 (a,b,c)

?rep()
# rep.int(x, times)
rep(5:6,times=3) # 5:6 replicated 3 times
rep(5:6, each=3)
# the 5s and the 6s (3 times) each grouped together

rep(x,times=3)
rep(x,each=3)

v<- c(4,9,16)
s<-sqrt(v) # works in vectorized way
s
