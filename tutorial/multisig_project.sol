// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

import "./ownable.sol";


struct Transaction {
        address receiver;
        uint amount; 
        uint id;
        bool status;
        uint approved;
    }

contract Payable is Ownable{

    mapping(address => uint) balance;

    event depositeDone(uint amount, address depositedTo);

    function deposite() public payable returns (uint) {
        balance[msg.sender] += msg.value;
        emit depositeDone(msg.value, msg.sender);
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

    function getOwner() public view returns (address){
        return owner;
    }

}