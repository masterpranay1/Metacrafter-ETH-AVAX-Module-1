# Calculator Contract
[![Solidity](https://img.shields.io/badge/Solidity-0.8.18-blue)](https://soliditylang.org/)
[![Metacrafter](https://img.shields.io/badge/Metacrafter-Amazing-orange)](https://www.metacrafters.io/)

This Solidity contract implements a simple Calculator that provides two mathematical operations - division and modulus (remainder). The contract ensures that division by zero is not allowed and performs necessary checks to ensure correctness of the results.

## Functions

### `divide(uint a, uint b)`

This function takes two unsigned integer values `a` and `b` as input parameters and returns the result of dividing `a` by `b`. It throws an error if `b` is zero, as division by zero is not allowed. The function employs the `require` statement to enforce this condition and uses the `assert` statement to ensure that the result is correct.

### `mod(uint a, uint b)`

This function takes two unsigned integer values `a` and `b` as input parameters and returns the modulus (remainder) of `a` divided by `b`. It throws an error if `b` is zero, as division by zero is not allowed. The function uses the `%` operator to calculate the modulus and asserts the correctness of the result using the `assert` and `revert`statements.

## Usage

To use this Calculator contract, you can follow these steps:

1. Open a Solidity development environment like Remix at https://remix.ethereum.org/.

2. Create a new file and save it with a .sol extension (e.g., `Calculator.sol`).

3. Copy and paste the provided contract code into the file.

4. Ensure that the Solidity compiler version is set to `0.8.18` (or a compatible version).

5. Compile the contract by clicking on the "Solidity Compiler" tab and then clicking "Compile Calculator.sol".

6. Deploy the contract by navigating to the "Deploy & Run Transactions" tab, selecting the `Calculator` contract from the dropdown menu, and clicking "Deploy".

7. Once the contract is deployed, you can interact with it by calling its functions.

### Example

Assuming the contract is deployed, you can call the `divide` and `mod` functions to perform mathematical operations.

## Author

Pranay Raj

[Linkedin](https://www.linkedin.com/in/masterpranay1)