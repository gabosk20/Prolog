%Multiplicacion
multiplicacion(X,0,0).
multiplicacion(X,1,X).
multiplicacion(0,X,0).
multiplicacion(X,Y,Res):-Y>1,N1 is Y-1,multiplicacion(X,N1,R1),Res is R1+X.


%potencia
potencia(X,0,1).
potencia(X,1,X).
potencia(1,X,1).
potencia(X,Y,Res):- Y>1,N1 is Y-1,potencia(X,N1,R1),Res is R1*X.

%divisiones
division(X,1,X).
division(X,0,0).
division(0,X,0).
division(X,Y,0):-Y>X.
division(X,Y,Res):-X>1,Y>1,N1 is X-Y,division(N1,Y,R1),Res is R1+1.