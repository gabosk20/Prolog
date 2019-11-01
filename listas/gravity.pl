representa(lamano,losDiarios).
representa(croazonRemendado,robbie).
representa(estrellaCincoPuntas,gideon).
representa(arbolDePino,dipperPines).
representa(sombreroDeFez,tioStand).
representa(llama,pacificaNoroeste).
representa(estrellaFugaz,mabelPines).
representa(signoInterrogacion,soos).
representa(bolsaDeHielo,wendiOBlendin).
representa(lentes,stanleyPines).

estaAIzq(robbie,stanleyPines).
estaAIzq(stanleyPines,soos).
estaAIzq(soos,wendiOBlendin).
estaAIzq(wendiOBlendin,tioStand).
estaAIzq(tioStand,dipperPines).
estaAIzq(dipperPines,gideon).
estaAIzq(gideon,losDiarios).
estaAIzq(losDiarios,pacificaNoroeste).
estaAIzq(pacificaNoroeste,mabelPines).
estaAIzq(mabelPines,robbie).        

estADer(X,Y):-  estaAIzq(Y,X).

estaADerRecusivo(X,Y):- estADer(Y,X).
    
estaADerRecusivo(X,Y):-X\=Y,estADer(Z,X),estaADerRecusivo(Z,Y).

sonVecinos(X,Y,Z):-
estADer(X,Y); estaAIzq(X,Z).

aDosL(X,W):-estADer(X,Y),estADer(Y,Z),estADer(Z,W).

estaEnMedioDe(X,Y,Z):-	
estADer(X,Y),estaAIzq(X,Z),
Y\=Z.

enmedio(X,Y):-estADer(Y,X).
enmedio(X,Y):-estADer(Z,X),enmedio(Z,Y),write(Z),nl.
 
parteRueda(X,Y):- representa(X,Y).