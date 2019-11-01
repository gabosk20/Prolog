member(X,[X|T]).
member(X,[H|T]):-member(X,T).


%a2b/2

[a,a].
[b,b,b].
esUnica([],[]).
esUnica([a|Y],[b|W]):-esUnica(Y,W).