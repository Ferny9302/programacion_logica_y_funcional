nivel(hominoidea,superfamily).
nivel(hominidea,family).
nivel(hylobatidae,family).
nivel(ponginae,subfamily).
nivel(homininae,subfamily).
nivel(hominini,tribe).
nivel(gorillini,tribe).
nivel(homo,genus).
nivel(pan,genus).
nivel(gorilla,genus).
nivel(pongo,genus).
nivel(hylobates,genus).



familia(hominoidea,hominidae).
familia(hominoidea,hylobatidae).

familia(hominidae,homininae).
familia(hominidae,ponginae).

familia(homininae,hominini).
familia(homininae,gorillini).

familia(ponginae,pongo).

familia(hominini,homo).
familia(hominini,pan).

familia(gorillini,gorilla).

familia(hylobatidae,hylobates).

familia(homo,human).

familia(pan,bonobo).
familia(pan,chimpanzee).

familia(gorilla,gorilla2).

familia(pongon,orangutan).

familia(hylobates,gibbon).

%1. ¿Es el gorila descendiente de Hominini?
%familia(hominini,gorilla).

%2. ¿Es el Homo hermano del gorila?
hermano(X,Y):- familia(Z,X), familia(Z,Y).

%3. ¿Son el Homo y el Gorilla de la misma subfamilia?
subfamilia(X,Y):- familia(Z,X), familia(W,Y), familia(A,Z), familia(A,W), nivel(A,subfamily).

%4. ¿Tiene Hominini la misma familia que Pongo?
fam(X,Y):- nivel(X,Z), nivel(Y,Z).

%5. ¿Quiénes son los descendientes directos de una tribu?
%nivel(X,tribe),familia(X,Y)

%6. ¿Cuál es la superfamilia a la que pertenece Hylobates?
%familia(X,hylobates), familia(Y,X), nivel(Y,Z).

%7. ¿Qué géneros comparten la misma subfamilia con Pan?
