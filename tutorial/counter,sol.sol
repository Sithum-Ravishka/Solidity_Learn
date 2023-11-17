// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Counter{

    uint public counter;

    function inc() external {
        counter += 20;
    }

    function dec() external {
        counter -= 1;
    }

    function mul() external {
        counter *= 3;
    }

    function div() external {
        counter /= 4;
    }

    function rem() external {
        counter %= 2;
    }

    function test() external {
        counter *=  10 + 2 - 8;
    }
}