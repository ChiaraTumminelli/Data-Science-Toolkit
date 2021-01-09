#Drawing graphics for numerics data
library("UsingR")
data(faithful)
str(faithful)

#Histogram --> NUMERIC DATA
hist(faithful$waiting)
hist(faithful$waiting, breaks=30)   #add cells
hist(faithful$waiting, breaks=5)    #remove cells

#Box plot --> NUMERIC DATA
boxplot(faithful$waiting)
boxplot(faithful$waiting, horizontal = TRUE)