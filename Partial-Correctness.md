# Partial Correctness

Since we implemented factorial recursively in our blog on termination, we will implement it iteratively for the sake of our discussion on partial correctness. 
We will use this while loop to analyze the partial correctness. See the code below for reference. Although this code shows the entire contract and a function 
so that it can compile, we will focus our discussion on the while loop within the function. 

```
pragma solidity ^0.4.0;

contract Loop {

	function factorial(uint256 n) public constant returns (uint256) {
		uint result = 1;
		while (n > 0) {
			result = result * n;
			n = n - 1;
		}
return result;
}
}
```

To start, let’s recall what partial correctness means. We’re looking to prove the correctness of the program assuming that the loop terminates. 
First, we need to determine the pre-condition, post-condition, and invariant. With this we will be able to determine that the pre-condition implies 
the invariant and that the invariant implies the post-condition. For starters, we can say that there are a few pre-conditions. Namely, we have the pre-conditions
`{result = 1 ^ n > 0 ^ n = x}` 

We also have the post-conditions `{n = 0 ^ result = x!}`

This leaves us with `{result = 1 ^ n > 0 ^ n=x} while (n != 0) do result=result * n; n = n-1 done {n=0 ^ result=x!}`

From here, we need to determine the invariant that will allow us to prove partial correctness. Analyzing the program, we were able to see that the invariant below
can be found

`n! * result = x!` where x is the initial value of n. 

This is because the value of result increases to offset the decrease in n as the program loops. At this point we need to prove that the 
pre-condition implies the invariant and that the invariant implies the post-condition.

1. `{result = 1 ^ n > 0 ^ n = x} => n! * result = x!`
2. `n! * result = x! => {n=0 ^ result=x!}`

The first implication, we can see is trivially true by plugging in 1 for result and n for x. For the second implication, since `n=0` is a postcondition, we can plug in 0 for n and see that the left equates to `result=x!`
which is equivalent to the right hand side. 
