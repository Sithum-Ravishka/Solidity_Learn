// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract structtest{
    struct Book {
        string bookName;
        uint price;
        string author;
    }

    Book book;

    function setBook() public {
        book = Book("Harry Potter", 1000, "sithum");
    }

    function getBook() view public returns(string memory){
        return book.bookName;
    }
}