// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract voting{
    address public manager;
    mapping (string => candidate) public candidates;
    mapping (address => bool) public hasvoted;
    struct candidate{
        string name;
        uint votecount;
    }
    constructor() {
        manager = msg.sender;
    }
    function addcandidate(string memory _name) public {
        require(msg.sender == manager,"Only the manager add candidate.");
        candidates[_name] = candidate(_name,0);

    }
    function vote(string memory _candidatename) public{
        require(!hasvoted[msg.sender],"You already have voted.");
        require(bytes(candidates[_candidatename].name).length > 0,"Candidate not found.");
        candidates[_candidatename].votecount +=1;
        hasvoted[msg.sender] = true;
    }
    function getvote(string memory _candidatename) public view returns(uint)  {
        return candidates[_candidatename].votecount;
    }
}