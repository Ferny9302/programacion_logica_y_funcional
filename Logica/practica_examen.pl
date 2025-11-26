red(r1,red1).
red(r1,red2).
topologia(red1,s2).
topologia(red1,pc1).
topologia(red1,pc2).
topologia(red1,pc3).
topologia(red1,pc4).
topologia(red2,pc5).
topologia(red2,pc6).
topologia(red2,pc7).
topologia(red2,s1).
velocidad(red1, 1000).
velocidad(red2, 100).


%Desarrolle los hechos en base a la imagen.
%Muestre las PCs de la topología de estrella (red1).
%topologia(red1,X).

%Desarrolle una regla que determine si un dispositivo pertenece a una red.
mostrar_red(X,Y):-topologia(X,Y).
%mostrar_red(red1,pc1). mostrar_red(red1,pc5).

%¿Puede el S1 enviar ping a la pc2?
hacer_ping(Z,W):- topologia(X,Z), topologia(Y,W), red(r1,X), red(r1,Y).
%hacer_ping(pc2,s1)


%Invente una regla.
hermano(X,Y):- topologia(Z,X), topologia(Z,Y).
%hermano(pc1, pc5).

%Invente una regla que utilice una expresión aritmética.
convertir_kbps(X,Y):- velocidad(X,Z), Y is Z * 1000.
%convertir_kbps(red1, R).

%Invente una regla que utilice un comparador.
comparar_velocidad(Red, Limite, Resultado) :-
    velocidad(Red, V),               
    (V > Limite -> Resultado = 'Mayor';
     V =:= Limite -> Resultado = 'Igual';
     Resultado = 'Menor'
    ).
%comparar_velocidad(red1, 500, R).
