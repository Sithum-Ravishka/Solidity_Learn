// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract ViewAndPureFunctions {
    uint public myNumber;

    function getNumber() public view returns (uint) {
        return myNumber;
    }


    // Pure function
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}



/*
View Functions:

    Functions declared with the view modifier are read-only and do not modify the state of the contract.
    They can access the contract's state variables, but they cannot modify them.
    View functions are free to execute on any node in the network 
    --and do not consume any gas when called externally (i.e., in a transaction sent to the blockchain). 
s*/

/*
Pure Functions:

    Functions declared with the pure modifier are even more restrictive than view functions.
    Pure functions do not read or modify the state of the contract. They only depend on the parameters passed to them.
    Similar to view functions, pure functions do not consume any gas when called externally
*/