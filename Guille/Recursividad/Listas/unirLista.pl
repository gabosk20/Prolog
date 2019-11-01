
unirLista([],[],[]).
unirLista([],X,X).
unirLista(X,[],X).

unirLista([H|T],L2,[H|L3]):-unirLista(T,L2,L3).


