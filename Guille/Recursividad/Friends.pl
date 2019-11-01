plays(matt,joey).
plays(joey,dr).
plays(dr,jessica).

play(X,Y):- plays(X,Y).
play(X,Y):- plays(X,N),play(N,Y).