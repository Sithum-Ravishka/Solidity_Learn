// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract Ownable{

    address internal  owner;

    modifier onlyOwner{
        require(msg.sender == owner, "Only owner can add money to account"); // now only owner can add amount to address
        _; // run the function
    }

    constructor(){
        owner = msg.sender;
    }

}