// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract Counter {
    uint256 public number;
    error CannotIncrement ();
    function setNumber(uint256 newNumber) public {
        number = newNumber;
        console.log("Number", number);
    }

    function increment() public {
         if (number != 0) {
            revert CannotIncrement(); // <--- 🧨 Revert with custom error
        }
        number++;
    }
}
