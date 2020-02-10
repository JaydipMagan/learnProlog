loves(romeo,juliet). 

loves(juliet,romeo) :- loves(romeo,juliet).

male(a).
male(b).
male(c).
male(d).

female(e).
female(f).

happy(albert).
happy(alice).
happy(bob).

with_albert(alice).

parent(albert,a).
parent(alice,a).

parent(a,c).
parent(f,c).

runs(albert) :-
	happy(albert).

dances(alice) :-
	happy(alice),
	with_albert(alice).

get_grandchild_albert :- 
	parent(albert,X),
	parent(X,Y),
	write('alberts grandchild is '),
	write(Y),nl.


what_mark(70) :-
	write('First').

what_mark(60) :-
	write('2:1').

what_mark(50) :-
	write('2:2').

what_mark(else) :-
	write('Don\'t bother').