  In this overdue blog post, we will write about some of the basics of the programming language, 
Solidity, why we chose this language, and what we can do with it. First off, let’s discuss why Solidity was designed.
  Solidity was designed as a high-level programming language that can be used to implement smart contracts. Solidity 
programs are usually meant to run on the Ethereum Virtual Machine (EVM). The EVM is a runtime environment for Solidity. 
Importantly, this runtime environment is entirely sandboxed. This means that anyone can develop and test code on the EVM 
without actually affecting the operations and transactions within the blockchain. 
  Of course, the blockchain is another concept that we will need to introduce for those that are new to the world of 
cryptocurrency. Like the name states, blockchain is a chain of blocks that contain information within them. In Bitcoin, 
for example, the sender, receiver, and amount of money is stored within the block. Blockchain is essentially a “digital 
ledger” that’s open for everyone to see. It’s so powerful because once information has been recorded inside a block, it’s
almost impossible to change it. Blockchain is a distributed network, as opposed to a centralized network. Specifically, 
it’s a peer-to-peer network, meaning the users are connected to each other directly, via the internet. Every user is
given the exact same copy of the blockchain. Whenever a change is made to an existing block or a new block is added, it 
is verified against every other user’s blockchain. If someone is trying to maliciously change or add a block, it is very
hard for that change to get verified against the millions of other users’ blockchain version. To summarize, blockchain 
is a indelible record of every transaction that’s ever occured.
  Blockchain was created so that digital transactions could occur without the middleman, like a bank. In our case, we want
to create a voting ballot application where voters can submit their ballot without a middleman. This will be implemented
by creating a contract for every ballot. Once every ballot has been submitted, there can be a function that counts the 
votes for every contract and returns the winner with the most votes.
  We chose this language because of it’s growing popularity and use in the world today. The concept of smart contracts and
blockchain as a whole can make transactions easier and less expensive without a middleman taking a cut. We wanted to 
implement this new usability to an application that would and could be used currently. Neither of us have any experience 
with blockchain or Solidity and were very interested to get involved. 
  Of course, Solidity is just a single programming language that is run on the EVM, but there are other languages and 
platforms that are still emerging in the field considering it’s nascency. On this virtual machine, programmers are able
to create decentralized apps or dApps that run over the distributed network. By learning Solidity in tandem with more 
abstract mathematical concepts that apply to all programming languages, we feel we can start to get a better understanding 
of how smart contracts and dApps work regardless of the specific programming language. 
