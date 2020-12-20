#Esercizio 1
1-pexp(2.2,1.5)
pexp(1.73,1.5)-pexp(0,1.5)
1/1.5

#Esercizio 2
pnorm(4.1,3.8,0.3)
pnorm(4.25,3.8,0.3)-(pnorm(3.95,3.8,0.3))
qnorm(0.80,3.8,0.3)

#Esercizio 3
1-pnorm(0,-2,sqrt(4))

#Esercizio 4
6*100
6^2*(100^2)
1-pexp(2,1)
1-pexp(0.7,1)

#Esercizio 5
(300*5)+250
sqrt(290^2*5^2+135^2)
pnorm(0,300,290)
1-(dbinom(0,5,1-pnorm(0,300,290))+dbinom(1,5,1-pnorm(0,300,290))+dbinom(2,5,1-pnorm(0,300,290)))

#Esercizio 6
1-(pexp(480,1/160))
1-(dbinom(0,6, 1-pexp(480,1/160)))
160+160
(160^2)+(160^2)

#Esercizio 7
1-(pnorm(37,36.4,sqrt(0.5)))
1-((1-pnorm(37,36.4,sqrt(0.5)))*(1-pnorm(37,36.5,sqrt(0.6))))
36.4
2^2*0.5

#Esercizio 8
1-(punif(9,4,18))
1-(dbinom(0,5,punif(9,4,18)))
((4+18)/2)*5
5^2*(((18-4)^2)/12)

#Esercizio 9
1-(pnorm(80,60,sqrt(71)))
1-dbinom(0,2,pnorm(80,60,sqrt(71)))
60*4
4^2*71

#Esercizio 10
1-(0.11)
0.78-0.11
0.60

#Esercizio 11
1-pexp(16,1/8)
pexp(12,1/8)-pexp(4,1/8)
qexp(0.60,1/8)
8^2

#Esercizio 12
pnorm(-5,-1,sqrt(9))
1-pnorm(-1.5,-1,sqrt(9))
pnorm(-1,-1,sqrt(9))
pnorm(3,-1,sqrt(9))-pnorm(1,-1,sqrt(9))
qnorm(0.05,-1,sqrt(9))
pnorm(1,-1,sqrt(9))
