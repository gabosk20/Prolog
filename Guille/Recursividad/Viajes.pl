enCarro(newYork,hamilton).
enCarro(newYork,hamilton).
enCarro(hamilton,francia).
enCarro(valmont,roma).
enCarro(valmont,metz).
enTren(metz,frankfurt).
enTren(roma,frankfurt).
enTren(metz,paris).
enTren(roma,paris).
enAvion(frankfurt,bangkok).
enAvion(frankfurt,singapore).
enAvion(paris,losAngeles).
enAvion(bangkok,newYork).
enAvion(singapore,newYork).
enAvion(losAngeles,newYork).

puedoIr(X,Y):- enCarro(X,Y);enTren(X,Y);enAvion(X,Y).
puedoIr(X,Y):- (enCarro(X,N);enTren(X,N);enAvion(X,N)),puedoIr(N,Y).