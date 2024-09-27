#How to use NA values
library("UsingR")
data("central.park")
str(central.park)

table(central.park$WX, useNA = "ifany")