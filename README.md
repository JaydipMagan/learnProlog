# learnProlog
I learn prolog


We store facts and rules we define in a file with extension .pl

## Useful commands

`halt.` to exit out the prolog interpreter

`[database-name].` to load the database

`listing.` to show information in your database

`listing(predicate-name)` to show all predicates with the specified name

`tty_clear.` will clear the terminal

`run_tests.` will run the tests that are in the database
## Hello world!

`write('hello world'), nl.` output hello world to the screen with a new line(nl)

`write('It\'s like this) .` how to use ' within '' in prolog

## Define facts and rules

Facts and rules can be referred a clauses

`loves(romeo,juliet).` This is a fact, romeo loves juliet. romeo and juliet are atoms and must be lowercase to start with. loves is a predicate

`loves(juliet,romeo) :- loves(romeo,juliet).` This is a rule, juliet loves romeo iff romeo loves juliet

`-:` is if

### Complex rules

```
runs(albert) :-
	happy(albert)
```
This is a simple rule, albert will run if he is happy.

```
dances(alice) :-
	happy(alice),
	with_albert(alice).
```
This rule will combine 2 facts, alice will dance if she is happy and with albert.
## Using variables

Variables are always CAPITAL letters or start with `_`

`loves(romeo,X).` This will find out who romeo loves

`X = juliet` Output

`male(X),female(Y).` This will output all the combinations of male and female. You can cycle through using `;` and stop using `.` 


## Complex questions/queries

`parent(X,a),dances(X).` Find out the parent of a who also dances

`X = Alice` Should be the output

How do we find out the grandchildren of someone?

```
get_grandchild_albert :- 
	parent(albert,X),
	parent(X,Y),
	write('alberts grandchild is '),
	write(Y),nl.
```

`alberts grandchild is c` Should be the output

## If statements?

Prolog doesn't have conditional statements except `:-` so we have to rely on redefining predicates.

```
what_mark(70) :-
	write('First').

what_mark(60) :-
	write('2:1').

what_mark(50) :-
	write('2:2').

what_mark(else) :-
	write('Don\'t bother').
```

The above is like a switch statement.

`whatmark(70).` Will output "First"


## Recursion

Simple function to check if 2 people are related to each other

```
related(X,Y) :-
	parent(X,Y).
```

2 people can be related if one is a parent of another

```
related(X,Y) :-
	parent(X,Y),
	related(Z,Y).
```

To also handle grandparents we can use recursion.

## Unit testing

Unit testing can be done by using the plunit package.

Unit tests must be within the following lines`:- begin_tests(name_of_test_group).` and `:- end_tests(name_of_test_group).`.

A unit test will have a name and a list of properties of that test.
```test(testname,[properties...]).```

Suppose you wanted to test the following predicate:
```
marklist(70,X):-
	X = [70].
marklist(60,X):-
	X = [60].
```
The unit tests should look like :
```
:- begin_tests(marklisttest).
test(test1,[true(X=[70])]) :-
	marklist(70,X).
test(test2,[fail]) :-
	marklist([],X).
:- end_tests(marklisttest).
```
test1 will check if the list returned is [70]. 
test2 will check if the predicate failed as expected.

To run the tests use the command `run_tests.`
