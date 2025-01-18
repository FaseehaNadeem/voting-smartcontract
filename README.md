# voting-smart-contract

This is a simple voting smart contract written in Solidity. It allows a manager to add candidates and users to cast votes for their preferred candidates. It also ensures that users can vote only once.

---

## Features

- **Manager Role**: Only the manager (deployer of the contract) can add candidates.
- **One Vote Per Person**: Ensures that each address can vote only once.
- **Vote Count**: Keeps track of the votes for each candidate.
- **Candidate Validation**: Verifies that the candidate exists before allowing a vote.

---

## Functions

### 1. **addcandidate**
```solidity
function addcandidate(string memory _name) public
```
- Adds a new candidate.
- Can only be called by the manager.
- Takes the candidate's name as input.

### 2. **vote**
```solidity
function vote(string memory _candidatename) public
```
- Allows a user to vote for a candidate.
- Ensures the user has not already voted.
- Validates that the candidate exists before casting the vote.

### 3. **getvote**
```solidity
function getvote(string memory _candidatename) public view returns(uint)
```
- Returns the number of votes a candidate has received.
- Takes the candidate's name as input.

---
### 4. **DeclareWinner Function**
The declareWinner function finds and returns the name of the candidate with the highest votes. If no votes have been cast, it returns "No winner".

How It Works
Input:

Takes a list of candidate names (string[] memory _name).
Logic:

Starts with highestVote = 0 and winner = "No winner".
Checks if the input list is empty, throws an error if true.
Loops through candidates, compares their votes, and updates the winner if a candidate has more votes.
Output:

Returns the name of the candidate with the highest votes.
If no votes were cast, returns "No winner".
## How It Works

1. **Deploying the Contract**:
   - The person deploying the contract becomes the manager.

2. **Adding Candidates**:
   - The manager can add candidates using the `addcandidate` function.

3. **Voting**:
   - Users can vote for their preferred candidates using the `vote` function. 
   - The contract ensures users can only vote once.

4. **Checking Votes**:
   - The `getvote` function can be used to see how many votes a specific candidate has received.

---

## Example Usage

1. Deploy the contract.
2. Call the `addcandidate` function to add candidates (e.g., `"Alice"`, `"Bob"`).
3. Users can vote for a candidate using their Ethereum address.
4. Check the vote count of candidates with the `getvote` function.

