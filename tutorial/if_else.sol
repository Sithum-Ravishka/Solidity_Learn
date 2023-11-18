// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Operator{

    string message;

    constructor(string memory _message){
        message = _message;
    }

    function hello(int number) public view returns (string memory){
        if(number == 10){
            return message;
        }else{
            return "worng message";
        }
    }

     function addr() public view returns (string memory){
        if(msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4){
            return message;
        }else{
            return "worng address";
        }
    }

}