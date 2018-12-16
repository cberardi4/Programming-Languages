## Rewriting Strings Using Abstract Reduction Systems (ARS)

_Rules:_
1. ab -> ba
2. ba -> ab
3. aa -> 
4. b ->

- Reduce example strings such as 'abba' and 'bababa':

```
abba -> abab using rule #2
abab -> baab using rule #1
baab -> bb using rule #3
bb -> b using rule #4
b ->  using rule #4
```

```
bababa -> baabba using rule #1
baabba -> bbba using rule #3
bbba -> bba using rule #4
bb -> ba using rule #4
ba -> a using rule #4
```

- Why is it not terminating?

This ARS is not terminating because you can go infinitely loop back and forth between the first two rules. For example, 
with the string ‘aba’, you can go from aba -> bba -> ba -> ab -> ba and continue this loop forever. This counterexample 
proves the ARS is not terminating.

- How many equivalence classes does ⟷∗ have? Can you describe them in a nice way? What are the normal forms?

There are two equivalence classes for ⟷∗. One is a string with an even number of a's, which has a normal form of ' ' 
(empty string). The other equivalence class is a string with an odd number of a's with a normal form of 'a'. 

- Can you change the rules so that the ARS becomes terminating without changing its equivalence classes? Which measure 
function proves termination of your modified system?

In order to make this terminating while keeping the two equivalence classes the same, the first two rules could be taken out.
This way, the normal forms of the two classes are the same, and there is no more infinite loops for the first two rules. 
Because you can apply the rules in any order, it is easiest to reduce strings in the ARS is by applying the last rule first to cancel out an even number of b’s, and next apply the third rule and cancel and even number of a’s. Once you’re left with the last two rules, the measure function is the length of the string.


- Write down a question or two about strings that can be answered using the ARS. Think about whether this amounts to giving 
a semantics to the ARS.

Is the number of a's even? Is the number of a's odd?

_New Rules:_
1. ba -> bbaa
2. aa ->
3. ba -> ab
4. ab -> ba

- Can on reduce ab to aabb?
Yes.

```
ab -> ba using rule #4
ba -> bbaa using rule #1
bbaa -> baba using rule #3
baba -> abba using rule #3
abba -> abab using rule #3
abab -> aabb using rule #3
```

- Can one reduce ba to abbaababbab?
No. We know that we can't reduce ba to abbaababbab, because as will be shown below, the equivalence class of ba can be described by the rule that the number of b's minus the number of a's is even. In this case, we have 6 b's minus 5 a's and this is odd.

- Can one reduce ba to abbaababbaba?
Yes (equal number of a’s to b’s).

- Can you find a nice way of stating which words are in the equivalence class of ba?

In the equivalence class of ba, the number of b’s minus the number of a’s is even.

- Can you list some properties of words that remain invariant under application of rules?[1]

There are invariants that describe each equivalence class. There are four equivalence classes that are 
described in the subsequent question. Each equivalence class has some invariants that describe it based on an 
initial condition. For example, if we have an odd number of a’s as a precondition, there will be an odd number 
of a’s no matter how many rules we apply.

> It is not so clear for what this is an example. It is an example for an invariant, I see this. But what is the "initial condition" and what is the class here?


Similarly, we have an invariant for another equivalence class in that 
the number of b’s minus the number of a’s is even if there is at least one b. 

> Can you say how to prove that something is an invariant? Hint: The answer is by induction on the reduction rules of the ARS.

> wouldnt it be better to say: the number of b’s minus the number of a’s is even and there is at least one b.
> AND instead of IF?

The rest of the invariants and 
descriptions of the equivalence class are described below.

- Can you describe all equivalence classes? (I didn’t do this one myself … don’t know exactly how much work it requires.)

We can describe all four equivalence classes with six invariants (two of the equivalence classes are described with a 
union of invariants). First off, there is an equivalence class that can be described by there being an even number of a’s. 
There is also an equivalence class that can be described by there being an odd number of a’s. The third equivalence 
class can be described by the notion that the number of b’s minus the number of a’s is odd and there must be at least one b. 
The final equivalence class is described by the statement that the number of b’s minus the number of a’s is even and there 
must be at least one b. 

- Can you change the rules so that the ARS becomes terminating without changing its equivalence classes? Which measure 
function proves termination of your modified system?

We could remove the third rule to make the ARS terminating. The measure function of this modified system would also be length.
