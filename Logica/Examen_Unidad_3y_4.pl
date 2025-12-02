%Definir los hechos de los lenguajes derivados de Fortran siguiendo el orden de las flechas (Valor 30 puntos)
lenguaje(fortran,algol).
lenguaje(fortran,basic).
lenguaje(fortran,pli).

lenguaje(algol,basic).
lenguaje(algol,pli).
lenguaje(algol,simula).
lenguaje(algol,clu).

lenguaje(basic,super_basic).
lenguaje(basic,visual_basic).

lenguaje(simula,smalltalk).
lenguaje(smalltalk,self).
lenguaje(self,javascript).

%Estas las use para las reglas aritmeticas y comparador.
edad(fortran,1957).
edad(algol,1958).













%Muestre los derivados directos de Fortran  (Valor 10 puntos)
%lenguaje(fortran,X).  

%¿Es derivado Javascript de Self (devolverá true o false; Valor 10 puntos)
%lenguaje(self,javascript).  

%¿Es SuperBasic lenguaje hermano de VisualBasic? (devolverá true o false; Valor 10 puntos) 
hermano(X,Y):- lenguaje(Z,X), lenguaje(Z,Y).
%hermano(super_basic,visual_basic).

%Invente una regla. (Valor 10)
familia(X,Y):- lenguaje(Z,X), lenguaje(Z,Y), lenguaje(A,Z), lenguaje(A,Y).
%familia(simula,clu).

%Invente una regla que utilice una expresión aritmética. (Valor 15)
antiguedad(X,Y):- edad(X,Z), Y is 2024 - Z.
%antiguedad(fortran,R).

%Invente una regla que utilice un comparador. (Valor 15)
comparar_edad(Lenguaje, Limite, Resultado) :-
    edad(Lenguaje, E),               
    (E < Limite -> Resultado = 'Mas nuevo';
     E =:= Limite -> Resultado = 'Misma edad';
     Resultado = 'Mas viejo'
    ).
%comparar_edad(algol, 1960, R).
