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

estaIzq(X,Y):- vecino(Y,X).

pertenece(X):-vecino(X,_),vecino(_,X).

estaDer(X,Y):-vecino(X,Y).


enmedio(X,Y):-vecino(X,Y).
enmedio(X,Y):-vecino(X,Z),enmedio(Z,Y),write(Z), nl.

aDosL(X,W):- vecino(X,Z),vecino(Z,Y),vecino(Y,W).
