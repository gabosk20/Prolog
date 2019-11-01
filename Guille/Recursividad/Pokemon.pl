evol(huevo,bulbasaur).
evol(bulbasaur,ivysaur).
evol(ivysaur,venusaur).

evoluciona(X,Y):-evol(X,Y).
evoluciona(X,Y):-evol(X,N),evoluciona(N,Y).