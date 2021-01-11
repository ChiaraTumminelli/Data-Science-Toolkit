#confidence intervals

#Verzani 8.14 page 276

#The stud.recs (UsingR) data set contains a sample of math SAT scores from
#some population in the variable sat.m. Find 95% confidence interval for 
#the mean math SAT score for this data.

library(UsingR)
data(stud.recs)
str(stud.recs)
hist(stud.recs$sat.m)
mean(stud.recs$sat.m)
t.test(stud.recs$sat.m, conf.level = 0.95)

#the data set normtemp contains mesearusements of 130 healthy, randomly
#selected individuals. The variable temperature contains normal body
#temperature. Does the data appear to come from a normal distribution? 
#Is so, find the 90% confidence interval for population that was sampled.
#Does it include 98.6F?

data(normtemp)
str(normtemp)
hist(normtemp$temperature)
t.test(normtemp$temperature, conf.level = 0.90)
