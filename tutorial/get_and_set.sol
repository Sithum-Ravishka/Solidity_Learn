// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract GetAndSet{

    int number;

    function GetNumber() public view returns(int){
        return number;
    }

    function SetNumber(int _number) public {
        number = _number;
    }
}