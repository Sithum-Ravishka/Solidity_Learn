// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract Test{
    uint storedData = 300;  // State Variable

    constructor(){
       storedData = storedData + 900;  // Using state variable
    }

    function Data() view public returns (uint){
        return storedData;
    }
}