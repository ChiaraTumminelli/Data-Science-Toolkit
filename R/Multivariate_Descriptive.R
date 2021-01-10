#MULTIVARIATE DESCRIPTIVE STATISTICS
library("UsingR")

#-------------------------------------------------------------------------------
#1 quantitative - 1 qualitative
data("ToothGrowth")
str(ToothGrowth)
boxplot(ToothGrowth$len ~ ToothGrowth$dose)
#Esiste una differenza nella distribuzione delle variabili nei diversi gruppi?
#Se le box si sovrappongono la risposta e' no, altrimenti si.
#In questo caso c'e' una differenza.

#-------------------------------------------------------------------------------
#1 quantitative - 1 quantitative
data("fat")
str(fat)
plot(fat$wrist,fat$neck)
#Esiste una relazione tra le due variabili quantitative?
#Si usano degli indici di correlazione

#Correlazione di Pearson:
cor(fat$wrist,fat$neck)    
# >0 correlazione di tipo diretto, (valori grandi corrispondono a valori grandi
#    e valori piccoli corrispondono a valori piccoli)
# <0 correlazione di tipo inverso (valori grandi corrispondono a valori piccoli
#    e viceversa)
# =0 non c'e' correlazione

#Correlazione di Spearman:
data(Animals)
str(Animals)
cor(Animals$body,Animals$brain,method="spearman")
#Si usa quando ci sono valori molto grandi e di segno opposto

#-------------------------------------------------------------------------------
#1 qualitative - qualitative
data(grades)
str(grades)
cor(as.numeric(grades$prev),as.numeric(grades$grade),method="kendall")
#kendall e' un indice di concordanza

#-------------------------------------------------------------------------------