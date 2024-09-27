#Drawing graphics for NOT numeric data
library("UsingR")
data(babies)
str(babies)

#changing type from num to factor
factor(babies$smoke) -> x
str(x)

#How to add labels, view table and %
levels(x) <- c("A","B","C","D","E")    
table(x)   
table(x)/length(x)   

#Barchart (values and %)
barchart(table(x))
barchart(table(x), horizontal = FALSE)
barchart(table(x)/length(x))
barchart(table(x)/length(x), horizontal = FALSE)

#Dotchart (values and %)
dotchart(table(x))
dotchart(table(x)/length(x))

#pie (don't use)
pie(table(x))


