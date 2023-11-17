// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract HelloWorld {
    string public myString = "hello world";
}

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 - 1
                        //          uint8 0 to 2**8 -1

    int public i = 123; // int = int256  -2**255 to 2**255 -1

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    bytes32 public b32 = 0x1234567890123456789012345678901234567890123456789012345678901234;
    address public addr = 0x742d35Cc6634C0532925a3b844Bc454e4438f44e;
    
}