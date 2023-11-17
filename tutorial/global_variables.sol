// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract GlobalVariables {
    /*These are special variables which exist in 
    global workspace and provide information about the blockchain and transaction properties */

    function globalVars() external view returns (address, uint, uint, uint, uint, address) {
        address sender =  msg.sender;
        uint timeStamp = block.timestamp;
        uint blockNum = block.number;
        uint gasLimit = block.gaslimit;
        uint difficulty = block.difficulty;
        address payable coinbase = block.coinbase;

        return (sender, timeStamp, blockNum, gasLimit, difficulty, coinbase);
    }
}