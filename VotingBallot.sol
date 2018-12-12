pragma solidity ^0.4.7;
pragma experimental ABIEncoderV2;
import "remix_tests.sol"; // this import is automatically injected by Remix.

contract VotingBallot {
    
    // necessary information for a voter stored in struct
    struct Voter 
    {
        uint vote;
        bool hasVoted;
    }

    // all information needed to be a candidate stored in struct
    struct Candidate
    {
       string name;
       uint votes;
    }

    // setting an address value for each voter
    // similar to a dictionary term where each address maps to a Voter
    mapping(address => Voter) public voters;

    // array containing every candidate (which is a Candidate struct)
    Candidate[] public candidates;

    // when a vote has been cast, add who was voted for (name) to the logs
     event voteCast(string name, string message);

    
    // Add two new candidates to Candidate array with their name and zero votes
    constructor() public {
        candidates.push(Candidate("Christina Berardi", 0));
        candidates.push(Candidate("Ben Wasserman", 0));
    }

    // 
    function vote(uint candidate) public {

        // vote becomes official
        // map the candidate that they voted for to the Voter mapping
        Voter storage sender = voters[msg.sender];

        // validating that user input is within array of candidates
        require(candidate == 1 || candidate == 0, "Not a valid candidate.");

        // they haven't voted before, to ensure no double voting
        if (sender.hasVoted == false) {

            // have to change this so they can't vote again
            sender.hasVoted = true;
            
            // setting the candidate they voted for to the Voter's struct
            sender.vote = candidate;

            // add 1 vote to the candidate that was voted for's vote count
            candidates[candidate].votes += 1;

            // adding voting event to logs
            emit voteCast(candidates[candidate].name, "Vote cast.");
        }

    }

    // returns Candidate array -- next to each name is number of votes per candidate
    function showVotes() public constant returns (Candidate[]) {
        return candidates;
    }

    // loops through the Candidate array and counts how many votes each candidate has
    // by adding up votes variable from Candidate array and then returns name of current winner
    function showLeader() public constant returns (string) {
        // getting necessary information for for loop
        uint length = candidates.length;
        
        // variable containing current largest count of votes among Candidate array
        uint max_votes = 0;
        
        // will hold name of candidate with most votes
        string name;
        // loop through array and check to see which candidate has the highest number of votes
        for (uint i = 0; i < length; i++) {
            // new highst vote
            if (candidates[i].votes > max_votes) {
                max_votes = candidates[i].votes;
                // return the name of this candidate
                name = candidates[i].name;
            }
        }
        return name;
    }

}
