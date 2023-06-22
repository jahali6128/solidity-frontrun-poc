// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;


contract Quiz {

    mapping (address => string) contestants;
    string public winner;

    constructor() {
        contestants[0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266] = "Alice";
        contestants[0x70997970C51812dc3A010C7d01b50e0d17dc79C8] = "Bob";
    }

    function giveAnswer(string calldata answer_user) public {
        
        // Question: What language is this contract written in?
        // Answer: Solidity (with a capital 'S')
        bytes32 answer_actual = 0x60298f78cc0b47170ba79c10aa3851d7648bd96f2f8e46a19dbc777c36fb0c00;

        // If guessed right, find name of winner
        if (keccak256(abi.encodePacked(answer_user)) == answer_actual) {
            winner = contestants[msg.sender];
        }

        
    }

}



