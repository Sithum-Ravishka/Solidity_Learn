// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract DataLocation{
         mapping(uint => User) users;

        struct User{
            uint id;
            uint balance;
        }

        function addUser(uint id, uint balance) public {
            require(users[id].id != id, "user already in db");
            users[id] = User(id, balance);
        }

        function updateBalance(uint id, uint balance) public {

            require(users[id].balance >= balance, "Balance not sufficient");
            users[id].balance = users[id].balance + balance;
        }

        function getBalance(uint id) view public returns (uint) {
            return users[id].balance;
        }
}