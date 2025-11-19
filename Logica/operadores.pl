%suma
ejemplo_suma(X,Y, R) :- R is X +Y.
%resultado: ejemplo_suma(10.2,2,R).

%resta
resta(X,Y, R) :- R is X -Y.
%resultado: resta(10.2,2,R).

%Multiplicacion
multi(X,Y, R) :- R is X *Y.
%resultado: multi(10.2,2,R).

%Division
div(X,Y, R) :- R is X /Y.
%resultado: div(10.2,2,R).

%Residuo
resto(X,Y, R) :- R is X mod Y.
%resultado: resto(10,2,R).

% X elevado a Y
elevado(X,Y, R) :- R is X ^ Y.
%resultado: elevado(10,2,R).

% Negacion
neg(X, R) :- R is -X.
%resultado: neg(10,R).

%Valor absoluto
absoluto(X, R) :- R is abs(X).
%resultado: absoluto(10,R).

% Arco Coseno
acoseno(X, R) :- R is acos(X).
%resultado: acoseno(0.5,R).

% Arco seno
aseno(X, R) :- R is asin(X).
%resultado: aseno(0.5,R).

% Arco tangente
atangente(X, R) :- R is atan(X).
%resultado: atangente(0.5,R).

% Coseno
coseno(X, R) :- R is cos(X).
%resultado: coseno(0.5,R).

%Exponencial
exponencial(X, R) :- R is exp(X).
%resultado: exponencial(0.5,R).

%Logaritmo
logaritmo(X, R) :- R is log(X)/log(2).
%resultado: logaritmo(0.5,R).

%Logaritmo 2
loga(X, R) :- R is log(X).
%resultado: loga(0.5,R).

% Seno
seno(X, R) :- R is sin(X).
%resultado: seno(0.5,R).

% Raiz
raiz(X, R) :- R is sqrt(X).
%resultado: raiz(0.5,R).

% tangente
tangente(X, R) :- R is tan(X).
%resultado: tangente(0.5,R).

%Redondeo
round(X, N, R) :- Factor is 10 ** N, R is round(X * Factor) / Factor.
%resultado: round(3.14159, 2, R).
