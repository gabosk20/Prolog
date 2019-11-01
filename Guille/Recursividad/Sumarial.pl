sumarial(N,X):- N>1, N1 is N-1,sumarial(N1,X1),X is X1+N1.
sumarial(N,X):-N=<1,X is 1.

restorial(N,X):-N>=1,X is 1.
restorial(N,X):-N<1, N1 is N+1,restorial(N1,X1),X is X1+N1.