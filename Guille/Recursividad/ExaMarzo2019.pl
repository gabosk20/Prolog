vecino(dennis,lee).
vecino(lee,george).
vecino(george,fred).
vecino(fred,alicia).
vecino(alicia,neville).
vecino(neville,lavender).
vecino(lavender,parvati).
vecino(lavender,katie).
vecino(katie,natalie).
vecino(natalie,ron).
vecino(ron,hermione).
vecino(hermione,harry).
vecino(harry,colin).
vecino(colin,seamus).
vecino(seamus,angelina).
vecino(angelina,ginny).
vecino(ginny,dean).
vecino(dean,dennis).

estaAIzq(X,Y):-vecino(Y,X).
estaADer(X,Y):-vecino(X,Y).
pertenece(X):-vecino(X,_),vecino(_,X).
sonVecinos(X,Y,Z).
enseguidaDe(X,Y).
%enmedioDe(X,Y,Z):-vecino(X,Z),vecino(Z,Y).
enmedioDe(X,Y,Z):-estaAIzq(X,Y),not(estaADer(X,Z)).

enmedio(X,Y):-vecino(Y,X).
enmedio(X,Y):-vecino(Z,X),enmedio(Z,Y),write(Z),nl.

aDosL(X,W):-vecino(X,Y),vecino(Y,Z),vecino(Z,W).

