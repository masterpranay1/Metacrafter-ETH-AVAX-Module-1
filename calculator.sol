// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Calculator {

    function divide(uint a, uint b) public pure returns (uint) {
        require(b > 0, "Cannot divide by 0");

        uint result = a / b;

        assert(a == b * result + a % b); // There is no case in which this doesn't hold

        return result;
    }

    function mod(uint a, uint b) public pure returns (uint) {
        if(b == 0) revert("Cannot divide by 0");

        uint result = a % b;

        assert(a == b * (a / b) + result); // There is no case in which this doesn't hold

        return result;
    }
}