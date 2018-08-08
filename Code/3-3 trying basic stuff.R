Games
rownames(Games)
colnames(Games)
Games["LeBronJames","2012"]
FieldGoals

FieldGoals/Games
round(FieldGoals/Games,1)

round(MinutesPlayed) # not comparable, see Derrick Rose, certain values are too low

round(MinutesPlayed/Games) # normalizes, makes the comparison more sensible
