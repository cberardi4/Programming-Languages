# Term Rewrite Systems: Remove Function

Unlike rewrite systems, ARS’s has an infinite amount of reductions. Computationally, this would not work. Thus, term rewrite systems (TRS) are used to take an ARS and format them into a finite amount of rewrite rules. These are the equations. From this, one can conclude that TRS’s are terminating. Once the TRS is rewritten into equations with variables, equational rules of logic, such as substitution and congruence to find all the possible reductions.

An important aspect of term rewriting systems is the relation = . This relation can be defined as a set of equations in a signature Σ and a set X of variables. It maps the left hand side of the equation to the right hand side of the equation by substitution, reflexivity, and congruence. Essentially, it equates two sides of an equation.

For our term rewriting system, we have implemented a function that removes an element from a list. If you want to remove the element, first you must check if it’s the first element in the list. If it’s not, then reduce the size of the list recursively.

I will explain the lines of code by breaking up the TRS into chunks. The first three lines are definitions of types. 
```
remove: Element x List → List
[ ] : List
| : Element x List → List
```

The first line defines the TRS. The “remove” TRS takes in an Element and a List, as in an element in a list, and returns type List. The “[ ]” returns type List, and the “|” is a function that takes an Element and a List and returns a List. 


```
remove( x | [ ] ) =  [ ]
remove( x | [ x | L ] ) = L
remove( x | [ y | L ] ) = y | remove( x | L)
```
The first equation shows that removing an element from an empty list rewrites to an empty list. 
The second equation shows that removing an element x from a list with x as the first element in the array returns the list with all other elements, excluding x. The last equation is a recursive definition. If the first element in the list does not match the element being removed, you must recursively call the remove function until the first element matches the element being removed. When they match, the equation returns the list, excluding the removed element.


Below is the implementation:


```
remove: Element x List → List
[ ] : List
| : Element x List → List
remove( x | [ ] ) =  [ ]
remove( x | [ x | L ] ) = L
remove( x | [ y | L ] ) = y | remove( x | L)
```


We know that our remove equations are terminating because it has a measure function, which is the length of the list. This proves the termination for the TRS. This TRS is deterministic because there’s only one option to proceed in every step, meaning that it’s automatically confluent.
