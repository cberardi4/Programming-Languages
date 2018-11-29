# Mapping Functionality in Solidity: 

One concept that is especially important in Solidity is a mapping. This is also a concept that we had not seen before coding
in Solidity. We have decided that it’s such an essential concept within the language that it deserves a blog post.

## What is a mapping?
A mapping in solidity is a hash table. It has a key, or a hash, and a value. Mappings usually store the most important 
information of the smart contract, which is the state variable. Below is a mapping implementation from the Solidity 
documentation to clarify that definition. 

```
mapping (keyType => valueType) public mappingName;
```

The code below is a more concrete mapping example, which  is a smart contract of a school.The key, which in our program is an 
address, maps to a Student struct. The structure is a student, with their grade, first name, and last name. The mapping 
creates a hash table with a key type of address which maps to a Student created in the struct.

A more concrete example of a mapping:
```
Contract school
{
  struct Student 
  {
    uint grade;
    string firstName;
    string lastName;
  }
  mapping (address => Student) students;
  address [ ] public studentsInSchool;
}
```

Mappings have a specific property that says every possible key exists and is mapped to a type’s default value, which is all
zeros in the byte-representation. Mappings are used solely for state variables, which is the main information of the program.
In the example above, the state variable is students. 

## In our code:
We use mapping to store the voters within our program.

```
mapping(address => Voter) public voters;
```
