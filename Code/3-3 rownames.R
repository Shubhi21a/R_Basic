charlie<-1:5
charlie

# give names
names(charlie)
# tells name of elements
names(charlie) <- c("a","b","c","d","e")
charlie
charlie["d"]
names(charlie)
names(charlie)<- NULL # to clear the name
names(charlie)
temp.vec <- rep(c("a","b","zZ"),each=3)
temp.vec

bravo<- matrix(temp.vec,3,3)
bravo

rownames(bravo)
rownames(bravo) <- c("How","are","you?")
bravo

colnames(bravo)<- c("X","Y","Z")
bravo

bravo("are","Y") <- 0
bravo["are","Y"] <- 0 # need [] and not () while accessing elements via index
bravo
