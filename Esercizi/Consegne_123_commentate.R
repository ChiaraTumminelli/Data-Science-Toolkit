#Consegna 1

#Esercizio 1
0.32  #probabilita A
0.58  #probabilita B
0.1   #probabilita (A|B)

1-0.32                       #complementare di A
0.1*0.58                     #A intersecato B
0.32+0.58-(0.1*0.58)         #A unito B --> a + b - a intersecato b
(0.1*0.58)/0.32              #probabilita (B|A) --> a intersecato b diviso a
1-(0.32+0.58-(0.1*0.58))     #complementare di A intersecato complementare di B

#Esercizio 2
3  #lanci del dado
5  #facce del dado

1-(4^3/5^3)     #ottengo almeno un 3
3/5             #ottengo un dispari al lancio 1
1-(3/5)         #ottengo un pari al lancio 2
(5*3)/5^3       #ottengo un dispari al lancio 2
1-((5*3)/5^3)   #ottengo un pari al lancio 2

#Esercizio 3
13  #palline colorate
#numero di palline verdi e' il numero ottenuto lanciando un dado equo

#Consegna 2

#Esercizio 1
3/17
3/17+3/17
5/17+2/17+3/17+1/17
3/17
(-17*5/17)+(-15*2/17)+(-14*3/17)+(-9*1/17)+(-7*3/17)+(-2*3/17)

#Esercizio 2
0.59 #corro se piove
0.83 #corro se NON piove

1-sum(dbinom(2,13,0.59))   #corro piu' di 3 volte se piove
7*0.83                     #corro in una settimana di sole
0.59*0.27+0.83*(1-0.27)    #corro se p = 0.27

#Consegna 3

#Esercizio 1
1/0.85                                                #media esponenziale
1-pexp(3.65,0.85)                                     #maggiore di 3.65
pexp(-0.17,0.85)                                      #minore di -0.17
1-pexp(4.91-4.04,0.85)                                # >4.91 OR >4.04
(pexp(4.91,0.85)-pexp(4.04,0.85))/(pexp(4.91,0.85))   # >4.04 OR <4.91  

#Esercizio 2
300  #media normale
26   #deviazione standard normale

1-pnorm(283,300,26)                    #maggiore di 283
pnorm(283,300,26)-pnorm(253,300,26)    #compreso tra 253 e 283
qnorm(0.30,300,26)                     #valori maggiori il 70%
16*300+7                               #E(16X+7)
16*26                                  #StDev(16X+7)
