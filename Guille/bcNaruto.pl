esUchiha(sasuke).
esUchiha(itachi).
esUchiha(shisui).
esUchiha(obito).

amigos(sasuke,naruto).
amigos(itachi,shisui).
amigos(obito,kakashi).
amigos(itachi,naruto).
amigos(kakashi,rin).
amigos(obito,rin).

hermanos(sasuke,itachi).

vioMorir(sasuke,itachi).
vioMorir(itachi,shisui).
vioMorir(obito,rin).
vioMorir(kakashi,rin).

biju(shukaku).
biju(matatabi).
biju(isobu).
biju(sonGoku).
biju(kokuo).
biju(saiken).
biju(chumei).
biju(gyuki).
biju(kurama).

tieneSellado(naruto,kurama).
tieneSellado(killerBee, gyuki).
tieneSellado(roshi, sonGoku).
tieneSellado(gaara, shukaku).
tieneSellado(yugito, matatabi).
tieneSellado(minato,kurama).

pasaronSharingan(kakashi,obito).

%Reglas
esJinchuriki(X):- tieneSellado(X,Y),biju(Y).
puedeDespertarMangekiouSharingan(X):- esUchiha(X), vioMorir(X,Y).
tieneSusanoo:- (esUchiha(X),puedeDespertarMangekiouSharingan(X)); X== kakashi.
quienLeGana(X,Y):- esUchiha(X),(pasaronSharingan(_,x);pasaronSharingan(x,_),biju(Y)).