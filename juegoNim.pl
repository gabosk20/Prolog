jugador(j1).
jugador(j2).

empieza:- write("con cuantos palitos empieza el juego ☺ \n"),
			read(Cuantos),
			write("quien empieza el juego"),
			read(Quien),
			jugador(Quien),
			jugar(Cuantos,Quien).

jugar(1,Quien):- write(Quien),write("perdiste \n").

jugar(N,Quien):- N<1, write(Quien), write("ganador\n").

jugar(N,Quien):-
	write(Quien),
	write(" Quedan"), write(N),
	write("Cuantos quitamos puede ser 1,2 o 3?"),
	read(Cuantos),
	valida(Cuantos,NumeroP),
	jugador(OtroJugador), OtroJugador\= Quien,
	NAux is N-NumeroP,
	jugar(NAux,OtroJugador).

valida(N,N):-
			N < 4,N > 0.
valida(N,NP):- 
				N>3,N<1,
				write("Numero Invalido \n"),
				write("Validos 1-3, ingrese un numero nuevo: \n"),
				read(N1),
				valida(N1,NP).