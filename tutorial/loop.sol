// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Loop{
    function While(int number) public pure returns (int){

        int i = 0;
        while (i < 10 ){
            number++;
            i++;
        }
        return number;
    }

    function For(int number) public pure returns (int){
        for(int i =0; i<10; i++){
            number++;
        }
        return number;
    }
}