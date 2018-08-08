
count=0
for x in rnorm(100)
{if (x<1 & x>-1)
{ count=count+1}
print(count/100)}

for y in rnorm(1000)
{ if (y>-1 & y<1){
  i=i+1
  print(i/1000)
}}

count=0
rnorm(5)
for (i in rnorm(2))
{ print (i)}

count=0 # not count=2, count<-2
for i in 1:1000 # need to put () after for; for(xyz) {}; just like we put () after if, to specify the condition
{ a=rnorm()
  if( a>-1 & a<1){
    count=count+1
  }}
print(count/1000)

# Correct one! ~~~~~~
count<-0
for (x in rnorm(1000))
{if (x<1 & x>-1)
{ count <- count+1}}
print(count/1000)

# generalizing
n=10000
count=0
for(i in rnorm(n))
{if (i>-1 & i<1){
  count=count+1
}}
print(count/n)
# now, we can just keep changing value of n, and use the same code

n=100000
count=0
for(i in rnorm(n))
{if (i>-1 & i<1){
  count=count+1
}}
print(count/n)

# for (iteration) { do xyz}
# just like if(condition) (do abc)