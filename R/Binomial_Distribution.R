#Probabilita' in ogni punto
dbinom(first:last, size, prob)
#Esempio: dbinom(1:5, 5, 0.2)

#Per vedere il grafico
plot(first:last,dbinom(first:last, size, prob))
#Esempio: plot(1:5, dbinom(1:5, 5, 0.2))

#Probabilita' di un evento (valore singolo)
pbinom(x, size,prob)
#Esempio ottenere 21 teste da 51 lanci di una moneta
#pbinom(21,51,0.5)

#Questa funzione prende il valore di probabilità e fornisce un numero
#il cui valore cumulativo corrisponde al valore di probabilità.
qbinom(p, size, prob)
#Esempio: quante teste hanno probabilita' 0.25 lanciando una moneta 51 volte
#qbinom(0.25,51,0.5)


#Questa funzione genera il numero richiesto di valori casuali di una data
#probabilità da un dato campione.
rbinom(n, size, prob)
#Esempio trovare 8 variabili da un campione di 150 con probabilita' 0.4
#rbinom(8,150,0.4)
