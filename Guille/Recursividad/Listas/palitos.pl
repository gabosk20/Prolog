jugador(j1).
jugador(j2).

empieza:-
    write("Con cuantos palitos empieza el juego?"),read(Cuantos),
    write("Quien empieza el juego?"),read(Quien),validaj(Quien,Aceptado),
    jugador(Aceptado),jugar(Cuantos,Aceptado).
jugar(1,Quien):-write(Quien),write(" ya te gane ").
jugar(N,Jugador):-N<1 ,write(Jugador),write("Ya ganaste :S").

jugar(N,Jugador):-write("Cuantos quitamos?"),nl,
                write(Jugador),write(" quedan"), write(N),
                write(" Cuantos quitamos 1 2 o 3"),nl,
                read(Cuantos),
                valida(Cuantos,NumPermitido),
                jugador(OtroJugador),OtroJugador  \= Jugador,
                NAux is N-NumPermitido,
                jugar(NAux,OtroJugador).

valida(N,N):-N<4,N>0.
valida(N,NP):-write("Numero no Permitido"),nl,write("Validos 1-3, de un numero nuevo"),
                        read(N1),valida(N1,NP).
validaj(J,J):- jugador(J).
validaj(J,JA):- write(" El jugador no existe intenta con otro" ),read(J1),validaj(J1,JA).