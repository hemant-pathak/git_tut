parent( pam, bob).
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female(pam).
female(liz).
female(ann).
female( pat).

male(tom).
male(bob).
male(jim).

offspring( Y, X) :-
	parent( X, Y).

mother( X, Y) :-
	parent( X, Y),
	female( X).

grandparent(X, Z) :-
	parent( X, Y),
	parent( Y, Z).

different(X,Y) :-
    X = Y, !, fail
    ;
    true.

sister( X, Y) :-
	parent( Z, X),
	parent( Z, Y),
	female( X),
	different( X, Y).

predecessor(X,Z ) :-
	parent( X, Z).

predecessor(X , Z) :-
	parent( X, Y),
	predecessor(Y, Z).

haschild(X) :- parent(X,Y).

successor(X,Y) :- predecessor(Y,X).

somebody_has_child :- parent(_,_).
