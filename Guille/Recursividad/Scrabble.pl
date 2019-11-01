palabra(sopa,s,o,p,a).
palabra(bota,b,o,t,a).
palabra(nota,n,o,t,a).
%Palabras del cruci nuevo
palbra(cara,c,a,r,a).
palabra(asma,a,s,m,a).
palabra(zona,z,o,n,a).
%Palabras del cruci nuevo
palabra(piano,p,i,a,n,o).
palabra(avion,a,v,i,o,n).
%Palabras del cruci nuevo
palabra(artes,a,r,t,e,s).
palabra(arroz,a,r,r,o,z).
%Palabras del cruci nuevo
palabra(serpiente,s,e,r,p,i,e,n,t,e).
%Palabras del cruci nuevo
palabra(coloquial,c,o,l,o,q,u,i,a,l)
palabra(crees,c,r,e,e,s).
%Palabras del cruci nuevo
solucion:- palabra(H1,X1,_,_,X2),
           palabra(H2,_,X3,_,_,X5),
           palabra(H3,X4,_,_,X6),
           palabra(V1,X1,_,_,_,_),
           palabra(V2,X2,_,X3,_,X4),
           palabra(V3,_,X5,_,X6).