// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Library {
    
    address public admin;

    uint bookPrice;
    uint bookQuantity;

    mapping (address => uint) userBalance; 

    constructor(uint _bookPrice, uint _bookQuantity) {
        bookQuantity = _bookQuantity;
        bookPrice = _bookPrice;

        admin = msg.sender;
    }

    // Modifiers

    modifier isAdmin {
        require(admin == msg.sender, "You don't have access!!");
        _;
    }

    modifier hasMoney(address user) {
        if(userBalance[user] < bookPrice) {
            revert("You don't have suffienct balance to buy the book!!");
        }
        _;
    }

    // Functions

    function changePrice(uint newPrice) public isAdmin returns(string memory) {
        bookPrice = newPrice;

        assert(admin == msg.sender);
        assert(bookPrice == newPrice);
        return "Book Price Changed!!";
    }

    function addBook() public isAdmin returns(string memory) {
        bookQuantity += 1;

        assert(admin == msg.sender);
        return "Book Quantity Increased!!";
    }

    function addMoney(address user, uint amount) public returns(string memory) {
        userBalance[user] += amount;

        assert(userBalance[user] >= amount);
        return "User balance increased!!";
    }

    function buyBook(address user) public hasMoney(user) returns(string memory) {
        bookQuantity -= 1;
        userBalance[user] -= bookPrice;

        return "Book Buying successful!!";
    }
    
}