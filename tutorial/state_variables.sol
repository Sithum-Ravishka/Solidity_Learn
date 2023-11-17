// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract StateVariables{
    // State variable decleara inside contact but outside function

    uint public myUint = 123; //state variable

    // function foo() external {
    //     uint notStateVariable = 232; // local variable 
    // }
}