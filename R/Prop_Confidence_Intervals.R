#Verzani 8.6 pag 269 

#A student wishes to find the proportion of left-handed people at her college. 
#She surveys 100 fellow students and finds that only 5 are left-handed. If she
#computed a 95% confidence interval would it contain the value of p = 1/10?
binom.test(c(5,95),conf.level = 0.95)
1/10
TRUE

#Verzani 8.9 pag 270
#An erstwhile commercial claimed that Four out of five dentists surveyed would
#recommend Trident for their patients who chew gum. Assume the results were 
#based on a random sample from the population of all dentists. Find a 90% 
#confidence interval for the true proportion if the sample size was n = 5. 
#Repeat with n = 100 and n = 1000.
binom.test(c(4/5*5,1/5*5), conf.level = 0.90)
binom.test(c(4/5*100,1/5*100),conf.level = 0.90)
binom.test(C(4/5*1000,1/5*1000),conf.level=0.90)