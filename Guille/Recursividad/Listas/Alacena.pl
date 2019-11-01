quesadillas(qcarne,[queso,tortilla,carne]).
quesadillas(qsalsa,[queso,tortilla,salsa]).
quesadillas(qcamaron,[queso,tortilla,camaron]).


member(X,[X|_]).
member(X,[_|T]):-member(X,T).

queMePuedoHacer(X,[H|T],L):-quesadillas(X,L),member(H,L).
%queMePuedoHacer(X,[H|T]):-

































%queMePuedoHacer(X,[X|Y]):-quesadillas(Z|W),queMePuedoHacer()