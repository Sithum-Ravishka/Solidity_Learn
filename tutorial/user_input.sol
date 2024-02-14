// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract HelloWorld{
     
     string massage;

    constructor(string memory _massage){
        massage = _massage;
    }

    function hello() view public returns (string memory){
        return massage;
    }
}