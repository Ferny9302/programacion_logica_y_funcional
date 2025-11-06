
jefe(mark, sheryl).
jefe(sheryl, david).
jefe(sheryl, timothy).
jefe(sheryl, mike).
jefe(sheryl, elliot).
jefe(sheryl, lori).
jefe(elliot,rebecca).
jefe(elliot,heather).

%¿Quién es el jefe de Rebecca?
%1:jefe(X, rebecca).

%¿Es jefe Mark del jefe de Rebecca?
%2:jefe(X, rebecca), jefe(mark, X).

%¿Es Lori jefe de alguien?
%jefe(lori, X).

%Mostrar empleados del jefe de Heather
%jefe(X, heather), jefe(X, Empleado).

%¿Es Timothy jefe de Rebecca?
%jefe(timothy, rebecca).

%Mostrar compañeros de nivel de Mike
%jefe(X, mike), jefe(X, Compañero).

%¿Es el jefe de Rebecca compañero de nivel de David?
%jefe(X, rebecca), jefe(Y, david), jefe(Y, X).

%¿Es compañero de nivel Mike de Lori?
%jefe(X, mike),jefe(X, lori).
