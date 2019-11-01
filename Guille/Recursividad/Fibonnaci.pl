fibonnacci(0,0).
fibonnacci(1,1).
fibonnacci(N,X):-N>1,N1 is N-1,fibonnacci(N1,X1),N2 is N-2,fibonnacci(N2,X2),X is X1+X2.