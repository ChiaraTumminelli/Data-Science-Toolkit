library(UsingR)
data("stud.recs")
str(stud.recs)
t.test(stud.recs$sat.m, alternative = "two.sided", mu = 500)

#The data set normtemp(UsingR) contains meseaurements of 130 healthy, randomly
#selected individuals. The variable temperature contains normal body temperature
#Does the data appear to come from a normal distribution? If so, perform a t-test
#to see if the commonly assumed value of 98.6F is correct. (Studies have 
#suggested that 98.2F is actually more accurate)
library(UsingR)
data(normtemp)
str(normtemp)
t.test(normtemp$temperature, alternative="less", mu = 98.6)

#A new drug therapy is tested. Of 50 patients in the study, 40 had no recurrence
#in their illness after 18 months. With no drug therapy, the expected percentage 
#of no recurrence would have been 75%. Does the data support the hypothesis 
#that this percentage has increased? What is the p-value?
binom.test(c(40,10),alternative="greater",p=0.75)

#A car from a given company has a 10% chance of having a significant mechanical
#problem during its warranty period. A new model of the car is being sold. Of the
#first 25.000 sold, 2700 have ad an issue. Perform a test of significance to sew
#whether the proportion of all of these new cars that will have a problem is
#more than 10%. What is p-value?
binom.test(c(2700,25000-2700),alternative="greater", p=0.10)

#For the babies (UsingR) data set, the variable age contains the recorded mom's
#age and dage contains the dad's age for several different cases in the sample.
#Do a significance test of the null hypothesis of equal ages against a one-sided
#alternative that the dads are older in the sampled population.
data(babies)
str(babies)
t.test(babies$dage,babies$age, paired = TRUE, alternative = "greater", mu = 0)

#The Galton data set (HistData) contains data used by Francis Galton in 1885.
#Each data point contains a child's height and the average of his or her parent's
#heights. Assuming the data is a random sample for a poplation of interest, 
#perform a t-test to see if there is a difference in the population mean height.
#Assume the paired t-test is appropriate. 
data(Galton)
str(Galton)
t.test(Galton$parent,Galton$child,alternative="two.sided",paired=TRUE)

