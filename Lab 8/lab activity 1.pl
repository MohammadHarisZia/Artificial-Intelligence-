/*Facts*/

male(nana).
male(shakir).
male(haris).
male(faisal).
male(obaid).
male(abdullah).
male(ali).
female(nani).
female(iffat).
female(minhal).
female(fatima).
female(dolly).

parent(nana,iffat).
parent(nani,iffat).
parent(nana,dolly).
parent(nani,dolly).
parent(nana,ali).
parent(nani,ali).


parent(dolly,obaid).
parent(dolly,fatima).
parent(dolly,abdullah).
parent(faisal,obaid).
parent(faisal,fatima).
parent(faisal,abdullah).

parent(shakir,haris).
parent(shakir,minhal).
parent(iffat,haris).
parent(iffat,minhal).

/*Rules*/

father(X,Y):-
    male(X),
    parent(X,Y).

mother(X,Y):-
    female(X),
    parent(X,Y).

spouse(X,Y):-
    parent(X,Z),
    parent(Y,Z).

grandfather(X,Y):-
    male(X),
    parent(X,Z),
    parent(Z,Y).

grandmother(X,Y):-
    female(X),
    parent(X,Z),
    parent(Z,Y).

sibling(X,Y):-
    parent(Z,X),
    parent(Z,Y),
    X\=Y.

cousin(X,Y):-
    parent(Z,X),
    parent(W,Y),
    sibling(Z,W),
    X\=Y.

uncle(X,Y):-
    male(X),
    parent(Z,Y),
    sibling(Z,X);spouse(W,X).

aunt(X,Y):-
    female(X),
    parent(Z,Y),
    sibling(Z,X);spouse(W,X).
