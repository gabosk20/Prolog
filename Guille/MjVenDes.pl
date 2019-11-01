
%EJERCICIO 1:
%====================
%Sobre líquidos venenosos

%El Sr. Ido, el químico, tiene seis frascos llenos de líquidos coloreados. Hay uno de cada color: rojo, anaranjado, amarillo, verde, azul y violeta. El señor Ido sabe que algunos de esos líquidos son tóxicos, pero no recuerda cuales...

%Sin embargo, sí recuerda algunos datos. En cada uno de los siguientes pares de frascos hay uno con veneno y otro no:

%a) los frascos violeta y azul
%b) los frascos rojo y amarillo
%c) los frascos azul y anaranjado
%unoSiUnoNo(violeta,azul).
%unoSiUnoNo(rojo,amarillo).
%unoSiUnoNo(azul,anaranjado).
%El Sr. Ido recuerda también que en estos otros pares de frascos hay uno sin veneno:

%d) el violeta y el amarillo
%e) el rojo y el anaranjado
%f) el verde y el azul
%unoSi(violeta,amarillo).
%unoSi(rojo,anaranjado).
%unoSi(verde,azul).


%¡Ah! Casi lo olvido, añade el Sr. Ido, el líquido del frasco rojo no es venenoso. 
%noTieneVeneno(rojo).
%tieneVeneno(X):- (unoSiUnoNo(X,Y),noTieneVeneno(Y));(unoSiUnoNo(Y,X),noTieneVeneno(Y)).
%tieneVeneno(X):- (unoSi(X,Y),noTieneVeneno(Y));(unoSi(Y,X),noTieneVeneno(Y)).
%¿Qué frascos tienen veneno?




%EJERCICIO 2:
%======================================
%Encuentra la ocupación de cada mujer:

%(a) Clara es violentamente alérgica a las plantas.
noEs(clara, florista).
noEs(clara, jardinera).
%(b) Luisa y la florista comparten el departamento
noEs(luisa, florista).
%(c) A María y Luisa les gusta solamente la música rock
noEs(maria, directora_de_orquesta).
%(d) La jardinera, la diseñadora de modas y Nélida no se conocen entre sí.
noEs(nelida,disenadora).
noEs(nelida,jardinera).
%e) una mujer no puede tener una ocupación que esté relacionada con algo a lo que es alérgica:
%f) cada mujer tiene un solo trabajo, y  cada trabajo es ocupado por una sola mujer las cuatro mujeres elegidas y las cuatro ocupaciones  
% deben ser diferentes entre sí.
mujer(nelida).  mujer(clara).
mujer(luisa).   mujer(maria).
ocupacion(directora_de_orquesta).
ocupacion(jardinera).
ocupacion(florista).
ocupacion(disenadora).
/*
diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.
*/
/*respuesta( [ [M1,Oc1], [M2,Oc2], [M3,Oc3], [M4,Oc4] ] ):-
	mujer(M1),mujer(M2),mujer(M3),mujer(M4),
	ocupacion(Oc1),ocupacion(Oc2),ocupacion(Oc3),ocupacion(Oc4),
	diferentes(M1,M2,M3,M4),
	diferentes(Oc1,Oc2,Oc3,Oc4),
	not(noEs(M1,Oc1)),not(noEs(M2,Oc2)),
	not(noEs(M3,Oc3)),not(noEs(M4,Oc4)).*/


/*  	?- respuesta(X).
	X=[[clara,diseñadora],[luisa,jardinera],
	   [maria,florista],[nelida,directora_de_orquesta]]
	Yes
*/
%Clara no puede ser florista ni jardinera
%Luisa puede ser jardinera o florista
%

%EJERCICIO 3:
%==============================
%ALUMNO DESPISTADO:

/*”Un alumno de ISC del ITC, debido al nerviosismo del primer día de clase, 
ha anotado el nombre de sus profesores (Elisa, Fernando y Carlos), las 
asignaturas que se imparten (Lógica, Programación y Matemáticas) y el día
de la semana de las distintas clases (lunes, miércoles y viernes), pero 
sólo recuerda que:

- La clase de Programación, impartida por Elisa, es posterior a la de Lógica
- A Carlos no le gusta trabajar los lunes, día en el que no se imparte Lógica

Ayúdale a relacionar cada profesor con su asignatura, así como el día de la 
semana que se imparte

(Sabemos que cada profesor imparte una única asignatura y que las clases se dan 
en días diferentes)”

    Analicemos el problema mentalmente:
	*/
	
%programacion se imparte el viernes por elisa
%logica se imparte el miercoles por fernando
maestro(elisa). maestro(fernando). maestro(carlos).
materia(logica). materia(programacion). materia(matematicas).
dia(lunes). dia(miercoles). dia(viernes).

diferentes(A,B,C):- A\=B,A\=C,B\=C.

%impartida(materia,maestro).
impartida(programacion,elisa).
impartida(Mat,Mae):- materia(Mat),maestro(Mae),Mae\=elisa,Mat\=programacion.
%imparte(maestro,dia).
imparte(carlos, X):- dia(X), X\=lunes.
imparte(Mae,Dia):- maestro(Mae),dia(Dia),Mae\=carlos.

%horario(materia,dia).
horario(programacion,viernes).
horario(logica,X):- dia(X), X\=lunes.
horario(Mat,Dia):- materia(Mat),dia(Dia),Mat\=logica.



respuesta([[P1,M1,D1],[P2,M2,D2],[P3,M3,M3]]):-
	maestro(P1),maestro(P2),maestro(P3),
	materia(M1),materia(M2),materia(M3),
	dia(D1),dia(D2),dia(D3),
	diferentes(P1,P2,P3),diferentes(M1,M2,M3),diferentes(D1,D2,D3),
	impartida(M1,P1),impartida(M2,P2),impartida(M3,P3),
	imparte(P1,D1),imparte(P2,D2),imparte(P3,D3),
	horario(M1,D1),horario(M2,D2),horario(M3,D3).
