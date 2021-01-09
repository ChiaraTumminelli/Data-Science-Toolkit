#How to calculate mean
library("UsingR")
data(babyboom)
str(babyboom)

#running.time mean
mean(babyboom$running.time)

#calculate median also
median(babyboom$running.time)

#in this case median > mean, so it is influenced by sx values
#if median < mean it is interested by dx values
#if median = mean ther is simmetry
