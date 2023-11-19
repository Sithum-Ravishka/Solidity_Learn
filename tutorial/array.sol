// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Array{
    int[] number;

    function addNumber(int _number) public {
        number.push(_number);
    }

    // function getNumber(uint _index) public view returns (int){
    //     return number[_index];
    // }

    
    function pureNumber() public view returns (int[] memory){
        return number;
    }
}