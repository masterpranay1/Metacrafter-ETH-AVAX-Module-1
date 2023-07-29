# Calculator Contract
[![Solidity](https://img.shields.io/badge/Solidity-0.8.18-blue)](https://soliditylang.org/)
[![Metacrafter](https://img.shields.io/badge/Metacrafter-Amazing-orange)](https://www.metacrafters.io/)

# Library Contract

The `Library` contract represents a simple library system on the Ethereum blockchain. It allows users to buy books from the library by depositing Ether into their accounts. The contract is managed by an admin who can change the book's price, add new books to the library.

## Contract Details

### Variables

- `admin` (address): The Ethereum address of the contract administrator who has special privileges, such as changing the book's price and adding books to the library.

- `bookPrice` (uint): The price of a single book in Ether. Users need to have sufficient balance to purchase a book.

- `bookQuantity` (uint): The current quantity of books available in the library.

- `userBalance` (mapping): A mapping that stores the balances of users. The keys of the mapping are Ethereum addresses, and the corresponding values are the respective balances in Ether.

### Modifiers

- `isAdmin`: A custom modifier that restricts access to functions only to the contract's administrator. It ensures that only the admin can execute certain functions, like changing the book's price and adding new books.

- `hasMoney`: A custom modifier that checks whether a user has sufficient balance to buy a book. If the user's balance is less than the book's price, the transaction is reverted with an error message.

### Constructor

The contract constructor is executed only once during deployment and accepts two parameters: `_bookPrice` and `_bookQuantity`. These parameters set the initial book price and quantity in the library. The sender of the deployment transaction becomes the `admin` of the contract.

## Functions

### `changePrice(uint newPrice)`

This function allows the contract admin to change the price of the book.

### `addBook()`

This function enables the contract admin to increase the quantity of books in the library by one.

### `addMoney(address user, uint amount)`

This function allows users to add Ether to their account balance in the library.

### `buyBook(address user)`

Users can use this function to buy a book from the library. The function checks if the user has enough balance to afford the book before processing the transaction.

## Usage

To use the `Library` contract, follow these steps:

1. Deploy the contract by providing the initial book price and quantity.

2. The deploying account becomes the contract's administrator.

3. The admin can change the book price using the `changePrice` function.

4. The admin can add new books to the library using the `addBook` function.

5. Users can deposit Ether into their accounts using the `addMoney` function.

6. Users can buy a book by calling the `buyBook` function, which deducts the book price from the user's balance and decreases the book quantity.

## Author

Pranay Raj

[Linkedin](https://www.linkedin.com/in/masterpranay1)