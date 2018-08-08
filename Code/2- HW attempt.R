#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit=revenue-expenses
patact=round(0.7*profit)
pat
profit_margin=(pat/revenue)*100
profit_margin

m=mean(pat)
m
gmonth<-pat>m
gmonth
bmonth=pat<m
bmonth
best= pat>= (max(pat)) # <- to be used!!!! 
best
worst= pat<= (min(pat)) # better to say pat == min(pat)  ~~~~~~~~~
worst
profit
?round # round(x, digits = 0
p<- round(profit/1000,0)
p
pm<- round(profit_margin,2)
pm
pm0 <- round(pm)
r<- round(revenue/1000,0)
r
e <-round(expenses/1000,0)

# matrix  ~~~~~~~~~~~~~~~~~~

mat<- rbind(r,e,p,pat,pm0,gmonth,bmonth,best,worst
)
mat
# all the vlaues are presented at same level.
# as in, if one of the values has 4 digits after decimal, all will be shown with 4 digits after decimal
# even if you had rounded them before
# so be careful, the max decimal points is what will be shown in the matrix