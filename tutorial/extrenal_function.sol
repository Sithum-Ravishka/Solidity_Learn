// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

import "./ownable.sol";

interface GovernmentInterface{
    function addTransaction(address _from, address _to, uint _amount) external payable;
}

contract Payable is Ownable{

    GovernmentInterface governmentIntance = GovernmentInterface(0x7FDc955b5E2547CC67759eDba3fd5d7027b9Bd66);
     
    mapping(address => uint) balance;

    event depositeDone(uint amount, address depositedTo);

    function deposite() public payable returns (uint) {
        balance[msg.sender] += msg.value;
        emit depositeDone(msg.value, msg.sender);
        return balance[msg.sender];
    }

    function withdraw(uint amount) public onlyOwner returns (uint) {
        require(balance[msg.sender] >= amount);
        payable(msg.sender).transfer(amount);
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

    function getOwner() public view returns (address){
        return owner;
    }

    function transfer (address recipient, uint amount) public  {
        require(balance[msg.sender] >= amount, "Balance not sufficient");  // amount need lees than sender account ammount
        require(msg.sender != recipient, "Don't transfer money to yourself");  // check address is not sender address

        uint previousSenderBalance = balance[msg.sender];

        _transfer(msg.sender, recipient, amount);

        governmentIntance.addTransaction(msg.sender, recipient, amount);

        assert(balance[msg.sender] == previousSenderBalance - amount); // If i have 1000 after i send 500 and need true this
        // assert check balance[msg.sender] and previousSenderBalance - amount are 500 | this always true
    }

    function _transfer(address from, address to, uint amount) private {
        balance[from] -= amount;
        balance[to] += amount * amount;
    }

}