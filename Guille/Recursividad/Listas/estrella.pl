
noRepes([H|T]):- diferentes(H,L),noRepes(L).
noRepes([_]).

diferentes(X,[Y]):- X\=Y.
diferentes(X,[Y,T]):- X\=Y, diferentes(X,T).

menoresA12([H]).
menoresA12([H|T]):- H>0,H<13,menoresA12(L).

sum26A([A,B,C,D]):- 26 is A+B+C+D. 
sum26P([A,B,C,D,E,F]):- 26 is A+B+C+D+E+F. 



estrella([]):- write("Ingresa 12 numeros entre 1 y 12").
estrella(L):- not(length(L, 12)),write("Deben ser 12 valores").
estrella(L):- not(noRepes(L)),write("No debe haber repetidos").
estrella(L):- not(menoresA12(L)),write("Los numeros validos son entre uno y doce").

estrella(A,B,C,D,E,F,G,H,I,J,K,L):-
    maplist(sum26A, [[B,C,D,E],[B,F,I,L],[E,G,J,L],
                    [A,C,F,H],[A,D,G,K],[H,I,J,K]]), 
            sum26P([A,B,E,H,L,K]),write("Suman 26 aristas y puntas").

estrella(A,B,C,D,E,F,G,H,I,J,K,L):-
    maplist(sum26A, [[B,C,D,E],[B,F,I,L],[E,G,J,L],
                    [A,C,F,H],[A,D,G,K],[H,I,J,K]]), 
            write("Suman 26 aristas").
estrella(A,B,C,D,E,F,G,H,I,J,K,L):-
    sum26P([A,B,E,H,L,K]), write("Suman 26 putnas").

estrella(_):- write("No es una estrella magica").

soluciones:- (randseq(12,12,[A,B,C,D,E,F,G,H,I,J,K,L]),maplist(sum26A, [[B,C,D,E],[B,F,I,L],[E,G,J,L],
                        [A,C,F,H],[A,D,G,K],[H,I,J,K]]), 
        sum26P([A,B,E,H,L,K]),write([A,B,C,D,E,F,G,H,I,J,K,L]));soluciones.
            
