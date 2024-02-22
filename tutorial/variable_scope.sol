// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract C {
    uint public data = 30000;
    uint internal iData = 10;
    
    function x()  public returns (uint) {
        data = 3; // internal access
        return data;
    }
}

contract Caller{
    C c = new C();
    function f() view public returns(uint){
        return c.data(); //external access
    }
}

contract test is C{
    function y() public returns(uint){
        iData = 3; // internal access
        return iData;
    }

    function getResult() view public returns(uint){

      return iData; //access the state variable
   }
}

