#Standard deviation
library("UsingR")
data(babyboom)
str(babyboom)

#calculate standard deviation
sd(babyboom$running.time)

#calculate CV (coefficient of variation)
sd(babyboom$running.time)/mean(babyboom$running.time)