// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract ErrorHandling{
     
    mapping(address => uint) balance;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function addBalance(uint _add) public returns (uint) {
        require(msg.sender == owner); // now only owner can add amount to address
        balance[msg.sender] += _add;
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

    function transfer (address recipient, uint amount) public {
        require(balance[msg.sender] >= amount);  // amount need lees than sender account ammount
        require(msg.sender != recipient);        // check address is not sender address
        _transfer(msg.sender, recipient, amount);
    }

    function _transfer(address from, address to, uint amount) private {
        balance[from] -= amount;
        balance[to] += amount * amount;
    }

}