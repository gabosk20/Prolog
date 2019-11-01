quitarEle(X,[X|T],T).

quitaEle(X,[H|T],[H|T1]):- quitaEle(X,T,T1).


agregaA(X,L,Rsp):-Rsp=[X|L].
agregaD(X,L,Rsp):-Rsp=[L|X].
