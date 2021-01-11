#The GaltonFamilies (HistData) data set lists the height and gender of 934
#children. A 95% confidence interval for the difference in height by gender 
#based on this sample (which is assumed to be a random sample from a population
#of interest) could be found with:

library(HistData)
data("GaltonFamilies")
str(GaltonFamilies)

male <- GaltonFamilies$childHeight[GaltonFamilies$gender == "male"]
female <- GaltonFamilies$childHeight[GaltonFamilies$gender == "female"]
t.test(male, female, conf.level = 0.95)

#For the babies data set, the variable age contains the mother's age and
#the variable dage contains the father's age for several babies. Find a 
#95% confidence interval for the difference in mean age. Does it contain 0?
#What do you assume about the data?
data(babies)
str(babies)
t.test(babies$age,babies$dage,conf.level=0.95, paired = TRUE)
FALSE