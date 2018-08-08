# ---- Visualizing---- 

?matplot()
# Description : Plot the columns of one matrix against the columns of another

# matplot plots the columns, so it will plot data for 2005, then 2006 etc.
# What we want is to see progress of players, ie, row wise plotting
# hence, we will --- transpose---

t(FieldGoals) # to transpose
# now columns represent players

matplot(t(FieldGoals))
# Does not look very nice. let's add stuff to make it look better
matplot(t(FieldGoals), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=F )
# have to supply the same colour for legend, otherwise the legend will be WRONG

matplot(t(FieldGoals/Games), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=F )
# to normalize

matplot(t(FieldGoals/FieldGoalAttempts), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=F )
# tells accuracy