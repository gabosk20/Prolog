lista([]).
lista([X|T]):-implistal(X),nl,lista(T).

implistal([]).
implistal([X|T]):-write(X),tab(1),implistal(T).

cuentaLista([],0).
cuentaLista([_|T],Count):-cuentaLista(T,Aux), Count is Aux+1.


%[1,2,3].
bars([]).
bars([X|T]):-asterisco(X),nl,bars(T).

asterisco(0).
asterisco(X):-write(*),X1 is X-1,asterisco(X1).


buscaLista([X|T],1):-write(X).
buscaLista([X|T],Num):-Count is Num-1,buscaLista(T,Count).
