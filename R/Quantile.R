#How to have quantiles (sx values)
library("UsingR")
data(babyboom)
str(babyboom)

quantile(babyboom$running.time, 0.25)    #Q1
quantile(babyboom$running.time, 0.50)    #Q2
quantile(babyboom$running.time, 0.75)    #Q3

quantile(babyboom$running.time)    #0% = min, 100% = max