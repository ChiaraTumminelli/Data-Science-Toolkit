#Rifaccio Prova 1

#Esercizio 1
7 #palline numerate da 1 a 7
2 #estrazioni CON REIMBUSSOLAMENTO

13/49  #estraggo il numero 5
25/49  #somma dei due numeri estratti pari
1-0.51 #somma dei due numeri estratti dispari
21/49  #primo numero estratto maggiore del secondo

#Esercizio 2
7 #palline numerate da 1 a 7
2 #estrazioni SENZA REIMBUSSOLAMENTO

12/42       #estraggo il numero 5
18/42       #somma dei due numeri estratti pari
1-(18/42)   #somma dei due numeri estratti dispari

#Esercizio 3
0.60 #genio
0.70 #cioccolato
0.40 #entrambe

1-(0.6+0.7-0.4)  #non genio e non cioccolato

#Esercizio 4
6 #facce del dado NON equo
  #pari: probabilita' doppia
  
(1/9)+(2/9)+(1/9) #probabilita' che esca un numero < 4

#Esercizio 5
0.85   #montagna se non piove
0.7    #cinema se piove
0.10   #piove
0.90   #non piove

0.85*0.90+0.30*0.10           #montagna
(1-0.7)*0.10                  #montagna se piove
0.7*0.1/(0.7*0.1+0.15*0.9)    #cinema e piove

#Esercizio 6
0.35 #vado da A
0.65 #vado da B
0.5  #NON digerisco da A
0.5  #digerisco A
0.25 #NON digerisco B
0.75 #digerisco B

0.25*0.25+(0.25*0.75)*2                                  #NON ne digerisco almeno uno in B
0.35*0.5*0.5+0.65*0.75*0.75                              #Digerisco entrambi i piatti
0.35*0.5*0.5+0.35*0.5*0.5+0.65*0.75*0.25+0.65*0.75*0.75  #Digerisco il primo piatto
0.35*0.5*0.5+0.35*0.5*0.5+0.65*0.25*0.75+0.65*0.75*0.75  #Digerisco il secondo piatto
FALSE

#Esercizio 7
100 #totale unita'
15  #si HD si DVD
4   #si HD no DVD
80  #no HD si DVD
1   #no HD no DVD

(15+4)/100      #si HD
15/100          #si HD si DVD (HD intersecato DVD)
(15+4+80)/100   #si HD si DVD (HD unito DVD)
80/100          #no HD si DVD
15/(15+80)      #si HD e si DVD (HD|DVD)

#Rifaccio prova 2

#Esercizio 1
5 #palline gialle
8 #palline rosse

5         #casi favorevoli estrarre una gialla
5+8       #casi possibili 
5/(5+8)   #estrarre una pallina gialla

2 #palline estratte CON REIMBUSSOLAMENTO

dbinom(2,2,5/13) + dbinom(2,2,8/13)      #entrambe dello stesso colore
1-dbinom(2,2,8/13)                       #almeno una gialla

2 #palline estratte sono messe nella seconda scatola
1 #pallina estratta dalla seconda scatola

dbinom(1,1,5/13)               #estrarre una gialla dalla seconda scatola
(5/13*8/13)/dbinom(1,1,5/13)   #estraggo una gialla e una rossa se prima ho estratto una gialla

#Esercizio 2
10 #palline verdi
4  #palline blu

10          #casi favorevoli se estraggo una verde
10+4        #casi possibili
10/(10+4)   #estraggo una verde

3 #palline estratte SENZA REIBUSSOLAMENTO

dhyper(3,10,4,3) + dhyper(3,4,10,3)   #tutte e tre dello stesso colore
1-dhyper(3,4,10,3)                    #almeno una verde

3 #palline estratte prime vengono messe in una seconda scatola

dhyper(1,10,4,1)      #estraggo una verde
9/13*4/12+4/13*9/12   #estraggo due verdi e una blu se prima ho estratto una verde

#Esercizio 3
9 #palline blu
8 #palline gialle
  #estraggo finche' non ottengo una gialla

dgeom(4,8/17)           #esattamente 5 estrazioni
1-sum(dgeom(0:3,8/17))  #almeno 5 estrazioni

#prendo un dado equo con tante facce quante le estrazioni fatte prima

1/5      #ottengo 4 se ho fatto 5 estrazioni
1/7+1/7  #ottengo 6 oppure 7 se ho fatto 7 estrazioni

#Esercizio 4
0.75 #positivo malnutrito
0.03 #positivo correttamente nutrito
0.5  #malnutrito

1-(0.75*0.5+0.03*0.5)                     #negativo
((1-0.03)*0.5)/(1-(0.75*0.5+0.03*0.5))    #correttamente nutrita se negativa 
(0.03*0.5)/(0.75*0.5+0.03*0.5)            #correttamente nutrita se positiva

#Esercizio 5
0.25  #Giovanna arriva in tempo
0.77  #la mamma si alza prima di Giovanna
0.69  #la mamma arriva in tempo

sum(dgeom(0:7,0.25))    #Giovanna spedisce entro 8 giorni (<=)
sum(dgeom(0:1,0.25))    #Giovanna spedisce entro 10 giorni se non e' riuscita entro 8
sum(dgeom(0:7,0.25*(1-0.73)+0.73*0.69))  #spedito da Giovanna o dalla mamma entro 8 giorni

#Esercizio 6
11    #libri della saga
7     #libri letti in una settimana se sto a casa   (Poisson)
4     #libri letti in una settiamna se vado al mare (Poisson)
15    #giorni di vacanza
0.77  #rimango a casa
0.23  #vado al mare

1-ppois(10,4*(15/7))   #vado al mare e finisco tutta la saga
(1-ppois(10,4*(15/7)))*(0.23)+(1-ppois(10,7*(15/7)))*0.77   #finire la saga indipendentemente dal luogo in cui sono
(ppois(10,7*(15/7))*0.77)/(1-((1-ppois(10,4*(15/7)))*(0.23)+(1-ppois(10,7*(15/7)))*0.77))  #non finisco di leggere essendo rimasto a casa

#Esercizio 7
9     #numero appartamenti
0.61  #appartamento affittato
+0.08 #promozione

sum(dbinom(5:9,9,0.61))        #almeno meta' appartamenti affittati
sum(dbinom(5:9,9,0.61+0.08))   #almeno meta' appartamenti affittati con promozione

125 #guadagno mensile da ogni appartamento

125*0.61*9                           #guadagno mensile attuale
125*(0.61+0.08)*9                    #guadagno mensile con promozione
(125*(0.61+0.08)*9)-(125*0.61*9)     #incremento mensile

#Esercizio 8
18  #palline rosse
10  #palline nere
3   #palline estratte SENZA REIMBUSSOLAMENTO 

dhyper(3,18,10,3)           #estraggo esattamente 3 palline rosse
1-sum(dhyper(0:2,18,10,3))  #estraggo almeno 3 palline rosse

3 #palline estratte vengono messe in una seconda scatola

dhyper(1,18,10,1)  #estraggo una rossa dalla scatola

#Esercizio 9
5   #canti al giorno se c'e' il sole (Poisson)
2   #canti al giorno se NON c'e' il sole (Poisson)
254 #giorni di sole su 365

dpois(9,5)           #canta esattamente 9 volte e c'e' il sole
1-sum(dpois(0:8,5))  #canta almeno 9 volte e c'e' il sole
dpois(0,5)*(254/365)+dpois(0,2)*((365-254)/365) #non canta in una giornata qualunque
((254/365)*dpois(0,5))/(dpois(0,5)*(254/365)+dpois(0,2)*((365-254)/365)) #non ha cantato, c'e' il sole

#Esercizio 10
3 #parametro Poisson

1-sum(dpois(0:1,3/2))                    #almeno due nella prima meta' dell'anno
(dpois(4,3/2))/(1-sum(dpois(0:1,3/2)))   #esattamente 4 se nella prima meta' ce ne sono stati due

#Esercizio 11
2  #media
9  #varianza

9+2^2       #E(x^2)
13-7        #E(x^2-7)
3^2*9       #Var(3x+1)
3*sqrt(9)   #StDev(3x+1)

#Esercizio 12
# (Vedi tabella di numeri)

1/12                #x=10 y=7
1/12+2/12+0+1/12    #x=30
(1/12+1/12+1/12+1/12)*(1/12+1/12+1/12) = 1/12 -> FALSE

#Rifaccio parte 3 

#Esercizio 1
1.5 #parametro esponenziale

1-(pexp(2.2,1.5))             #maggiore di 2.2
pexp(1.73,1.5)-pexp(0,1.5)    #compreso tra 0 e 1.73
1/1.5                         #media

#Esercizio 2 
3.8  #media normale
0.3  #deviazione standard normale

pnorm(4.1,3.8,0.3)                       #minore di 4.1
pnorm(4.25,3.8,0.3)-pnorm(3.95,3.8,0.3)  #compreso tra 4.25 e 3.95
qnorm(0.80,3.8,0.3)                      #20% maggiore di questo valore

#Esercizio 3
-2  #media normale
4   #varianza normale

1-pnorm(0,-2,sqrt(4))  #maggiore di 0

#Esercizio 3
6    #numero fotocopiatrici
100  #media esponenziale

6*100        #E(6X)
(6*100)^2    #Var(6X)
1-pexp(200,1/100)      #una fotocopiatrice dura piu' di 200 giorni
1-pexp(200-130,1/100)  #dura piu' di 200 giorni sapendo che funziona da 130 giorni

#Esercizio 5
300  #media normale lun-ven
290  #dev standard normale lun-ven
250  #media normale sab
135  #dev standard normale sab

300*5+250               #media lun-sab
sqrt(290^2*5^2+135^2)   #dev standard lun-sab
pnorm(0,300,290)        #in perdita lun-ven
1-(dbinom(0,5,1-pnorm(0,300,290))+dbinom(1,5,1-pnorm(0,300,290))+dbinom(2,5,1-pnorm(0,300,290)))   #guadagni positivi per almeno 3 giorni sett su 5

#Esercizio 6
6   #dispositivi
160 #media esponenziale
480 #durata del corso

1-(pexp(480,1/160))                  #dispositivo 1 non si rompe prima della fine del corso
1-(dbinom(0,6, 1-pexp(480,1/160)))   #ho un dispositivo funzionante per tutto il corso
160*2                                #E(X1+X2)
(160^2)+(160^2)                      #Var(X1+X2)

#Esercizio 7
36.4  #mia media corporea normale
0.5   #mia varianza normale
36.5  #media normale giovanni
0.6   #varianza giovanni

1-pnorm(37,36.4,sqrt(0.5))                                      #io supero i 37 gradi
1-((1-pnorm(37,36.4,sqrt(0.5)))*(1-pnorm(37,36.5,sqrt(0.6))))   #non partiamo insieme
36.4                                                            #E(X) mia media
2^2*0.5                                                         #Var(2X+7)

#Esercizio 8
4  #min uniforme
18 #max uniforme
9  #spessore che voglio

1-punif(9,4,18)               #troppo spessa
1-dbinom(0,5,punif(9,4,18))   #almeno 1 su 5 NON e' troppo spessa
((4+18)/2)*5                  #E(5X)
5^2*(((18-4)^2)/12)           #Var(5X)

#Esercizio 9
71  #varianza normale
60  #impostazione del forno
80  #gradi con cui si brucia tutto

1-(pnorm(80,60,sqrt(71)))            #oggi brucio tutto
1-dbinom(0,2,pnorm(80,60,sqrt(71)))  #almeno una NON si brucia
60*4                                 #E(4T)
4^2*71                               #Var(4T)

#Esercizio 10
#vedere il grafico della normale per vedere i valori

1-0.11        #maggiore di -3.36
0.78-0.11     #compreso tra 3.1 e -3.36
0.60          #media deducibile dal grafico

#Esercizio 11
8  #media esponenziale del powerbank

1-pexp(16,1/8)             #carica superiore a 16
pexp(12,1/8)-pexp(4,1/8)   #carica compresa tra 12 e 4 
qexp(0.60,1/8)             #60% minore di questo valore
8^2                        #varianza 

#Esercizio 12
-1  #media normale
9   #varianza normale

pnorm(-5,-1,sqrt(9))                         #minore o uguale a -5
1-pnorm(-1.5,-1,sqrt(9))                     #maggiore di -1.5
pnorm(-1,-1,sqrt(9))                         #minore di -1
pnorm(3,-1,sqrt(9))-pnorm(1,-1,sqrt(9))      #compreso tra 3 e 1
qnorm(0.05,-1,sqrt(9))                       #percentile 0.05
pnorm(1,-1,sqrt(9))                          #f distribuzione in 1


