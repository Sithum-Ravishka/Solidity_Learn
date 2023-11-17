// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 200;
        bool y = false;

        x += 20;
        y = true;

        i = 300;
        b = true;
        myAddress = address(1554233);
    }
}