listensToMusic(mia).
happy(yolando).
playsAirGuitar(mia) :- listensToMusic(mia),
    write('Mia plays air guitar if she listens to music').

parent(albert,bob).
parent(albert,betsy).
parent(albert,bill).

parent(alice,bob).
parent(alice,betsy).
parent(alice,bill).

parent(bob,carl).
parent(bob,charlie).

teacher(albert).
teacher(alice).

get_grandChild:-
    parent(albert,X),
    parent(X,Y),
    write('Alberts grandchild is '),
    write(Y),nl.


get_grandParent(X,Y):-
    parent(X,Z),
    parent(Z,Y),
    format('~w ~s grandparent `n',[X,'is the']).
