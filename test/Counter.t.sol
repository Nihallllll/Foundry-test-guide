// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Import Foundry's standard test library and the contract you want to test
import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    // Declare an instance of the contract to be tested
    Counter public counter;
    error CannotIncrement();
    // setUp is a special function run before each test case
    function setUp() public {
        // Deploy a new instance of the Counter contract
        counter = new Counter();
        // Optionally set an initial state
        counter.setNumber(0);
    }

    // A test function - MUST start with "test"
    function testIncrement() public {
        // Get the initial value
        uint256 initialValue = counter.number();
        // Call the function being tested
        counter.increment();
        // Assert that the number increased by 1
        assertEq(counter.number(), initialValue + 1, "Number should have incremented by 1");
    }

    // Another test function for the setNumber function
    function testSetNumber() public {
        uint256 expectedValue = 42;
        // Call the function being tested
        counter.setNumber(expectedValue);
        // Assert that the number was set correctly
        assertEq(counter.number(), expectedValue, "Number should have been set");
    }

    // Example of a test that should fail (demonstration)
    // Foundry expects failing tests to be prefixed with "testFail"
    function testIncrementFromNonZero() public {
        counter.setNumber(10);
        vm.expectRevert(Counter.CannotIncrement.selector);
        counter.increment();
        // This assertion will fail because 11 != 10
        //assertEq(counter.number(), 10, "This assertion should fail");
    }
}
