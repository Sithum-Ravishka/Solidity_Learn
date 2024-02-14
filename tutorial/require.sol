// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract ErrorHandling{
     
    mapping(address => uint) balance;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function addBalance(uint _add) public returns (uint) {
        require(msg.sender == owner, "Only owner can add money to account"); // now only owner can add amount to address
        balance[msg.sender] += _add;
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

    function transfer (address recipient, uint amount) public {
        require(balance[msg.sender] >= amount, "Balance not sufficient");  // amount need lees than sender account ammount
        require(msg.sender != recipient, "Don't transfer money to yourself");  // check address is not sender address

        uint previousSenderBalance = balance[msg.sender];

        _transfer(msg.sender, recipient, amount);

        assert(balance[msg.sender] == previousSenderBalance - amount); // If i have 1000 after i send 500 and need true this
        // assert check balance[msg.sender] and previousSenderBalance - amount are 500 | this always true


    }

    function _transfer(address from, address to, uint amount) private {
        balance[from] -= amount;
        balance[to] += amount * amount;
    }

}