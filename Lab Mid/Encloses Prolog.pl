contains(b1,b2).
contains(b1,b5).
contains(b2,b3).
contains(b2,b4).
contains(b5,b6).
contains(b6,b7).

encloses(A,B):-
    contains(A,B);
    contains(A,C),contains(C,B);
    contains(A,C),contains(C,D),contains(D,B).

