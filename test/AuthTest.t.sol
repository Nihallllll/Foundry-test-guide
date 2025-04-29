    // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.13;
    import "forge-std/Test.sol";
    import "../src/Auth.sol";
    contract AuthTest is Test {
        Auth public auth ; 

        function setUp() public{
        auth = new Auth();
        }

        function testOwner() public{
            auth.setOwner(address(1));
            assert(address(1)==auth.owner());
        }
        function testFailNotowner() public{
            vm.prank(address(1));
            vm.expectRevert("Ownable: caller is not the owner");
            auth.setOwner(address(1));
        }
    }