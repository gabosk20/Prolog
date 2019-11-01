%EJERCICIO 1



/*

A partir de la siguiente base de conocimiento en prolog, 
crear las reglas necesarias para que el intérprete nos 
diga qué alimento puede comer cada animal:

*/
herbivoro(vaca).
herbivoro(oveja).
carnivoro(leon).
hortaliza(tomate).
hortaliza(zanahoria).
fruta(manzana).
pescado(besugo).
carne(salchicha).
fideos(spaghetti).
%Creamos las reglas:
come(X,Y):- (herbivoro(X),(hortaliza(Y);fruta(Y)));( carnivoro(X),(carne(Y);pescado(Y);herbivoro(Y);(carnivoro(Y),dif(X, Y)))).
%come(X,Y):- carnivoro(X),(carne(Y);pescado(Y);herbivoro(Y);(carnivoro(Y),dif(X, Y))).

%EJERCICIO 2
% Elabore un programa en prolog que defina lo siguiente:
% 1) Las algas usan medias rojas.
%2) Todo objeto o animal o persona que usa  desodorante sabe tocar el saxo.
%3) Todo lo que eche humo usa desodorante.
% 4) Nada ni nadie que usa medias rojas puede tocar el saxo.
% 5) Todas las personas  puede usar un objeto
% 6) Si una persona usa desodorante no hara la tarea
% 7) Si usa desodorante y puede usar un objeto echa humo
% 8)Cualquier animal que corre es feliz
% 9) Los hippies son felices y pueden tocar el saxo
% 10) libre 

animal(gacela).
objeto(pelota).
persona(carlos).