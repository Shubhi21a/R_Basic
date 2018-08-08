x<-rnorm(5)
x
# R specific programming loop
# i iterates over the values themselves
for(i in x){
  print(i)
}

print(x[1])

# conventional programming loop, j iterates over the indices, and then we print the  values
for (j in 1:5){
  print(x[j])
}


# -------------------------------- 2nd Part for Today -------------------------------------------- #

N <-100
a<- rnorm(N)
b<- rnorm(N)

# Vectorized Approach
c <- a*b # not only is this smaller code, it is also faster in R 
# Vectorized approach is faster in R, which isn't the case in other languages (like Julia etc.)

# De-vectorized Approach
d<- rep(NA,N) # want to allocate memory/spaces 
for (i in 1:N){
  d[i]=a[i]*b[i]
}