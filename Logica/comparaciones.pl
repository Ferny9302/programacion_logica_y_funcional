% Comparar area del circulo
area_circulo(Radio, Area):- Area is pi * Radio ** 2.

%comparar_area(10,12, Resultado).
comparar_area(Radio, Limite, Resultado):-
    area_circulo(Radio, Area),
    (Area > Limite -> Resultado = 'Mayor';
    Area =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor'
    ).

% Comparar perimetro de un cuadrado
% comparar_perimetro(9,20, Resultado). 
comparar_perimetro(Lado, Limite, Resultado):-
    Perimetro is Lado * 4,
    (Perimetro > Limite -> Resultado = 'Mayor';
    Perimetro =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor'
    ).

% Verificar si el número es positivo, negativo o Cero
verificar(Numero, Clasificacion) :-
    Numero > 0,
    Clasificacion = 'Positivo'.
verificar(Numero, Clasificacion) :-
    Numero < 0,
    Clasificacion = 'Negativo'.
verificar(0, Clasificacion) :-
    Clasificacion = 'Cero'.

% Comparar la raíz cuadrada con un valor
% comparar_raiz(25,5, Resultado).
comparar_raiz(Numero,Limite, Resultado):-
    Raiz is sqrt(Numero),
    (Raiz > Limite -> Resultado = 'Mayor';
    Raiz =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor'
    ).