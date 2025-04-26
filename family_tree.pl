% family_tree.pl
% Basic family relationships
parent(john, mary).
parent(john, bob).
parent(lisa, mary).
parent(lisa, bob).
parent(mary, susan).
parent(mary, tom).
parent(bob, carl).
parent(bob, alice).

male(john).
male(bob).
male(tom).
male(carl).

female(lisa).
female(mary).
female(susan).
female(alice).

% Derived relationships
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2).

descendant(X, Y) :-
    parent(Y, X).
descendant(X, Y) :-
    parent(Z, X),
    descendant(Z, Y).
