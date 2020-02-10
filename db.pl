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

runs(albert) :-
	happy(albert)

dances(alice) :-
	happy(alice),
	with_albert(alice).