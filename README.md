# learnProlog
I learn prolog


We store facts and rules we define in a file with extension .pl

## Useful commands

`halt.` to exit out the prolog interpreter

`[database-name].` to load the database

`listing.` to show information in your database

`listing(predicate-name)` to show all predicates with the specified name


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

Variables are always CAPITAL letters

`loves(romeo,X).` This will find out who juliet loves

`X = juliet` Output

`male(X),female(Y).` This will output all the combinations of male and female. You can cycle through using `;` and stop using `.` 
