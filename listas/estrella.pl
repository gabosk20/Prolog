menoresA12([H]).
menoresA12([H|L]):-H>0,H<13,menoresA12(L).


noRepes([X|L]):- diferentes(X,L),noRepes(L).
noRepes([_]).

diferentes(X,[Y]):- X\=Y.
diferentes(X,[Y|L]):- X\=Y, diferentes(X,L).

sum26([A,B,C,D]):- 26 is A+B+C+D.
sum26v2([A,B,C,D,E,F]):- 26 is A+B+C+D+E+F.

estrella([]):- write("ingresa doce numeros 1-12").
estrella(L):-  not(length(L,12)), write("deben ser 12 valores").
estrella(L):- not(noRepes(L)), write("no deben haber repetidos").
estrella(L):- not(menoresA12(L)), write("solo validos entre 1 y 12").
estrella([A,B,C,D,E,F,G,H,I,J,K,L]):-
	maplist(sum26,[[B,C,D,E], [B,F,I,L], [E,G,J,L],
					[A,C,F,H], [A,D,G,K], [H,I,J,K]]),
	sum26v2([A,B,E,H,L,K]),
	write("suman 26 aristas y puntas").
estrella([A,B,C,D,E,F,G,H,I,J,K,L]):-
	maplist(sum26,[[B,C,D,E], [B,F,I,L], [E,G,J,L],
					[A,C,F,H], [A,D,G,K], [H,I,J,K]]),
	write("suman 26 aristas").
estrella([A,B,C,D,E,F,G,H,I,J,K,L]):-
	sum26v2([A,B,E,H,L,K]),
	write("suman 26 puntas").
estrella(_):-write("No es una estrella magica").

soluciones:-
%generear numero raandom
	randseq(12,12,[A,B,C,D,E,F,G,H,I,J,K,L]),
	maplist(sum26,[[B,C,D,E], [B,F,I,L], [E,G,J,L],
					[A,C,F,H], [A,D,G,K], [H,I,J,K]]),
	sum26v2([A,B,E,H,L,K]),
	write([A,B,C,D,E,F,G,H,I,J,K,L]);
	soluciones.