pragma solidity ^0.6.0;

contract Mapping{
    
    // Mapping
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }


    constructor() public {
        names[1] = "Sid";
        names[2] = "Adam";
        names[3] = "Lily";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title,_author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}