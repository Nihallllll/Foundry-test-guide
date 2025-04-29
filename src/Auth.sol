// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Auth {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withDraw(uint256 _amount) external {
        require(msg.sender == owner, "Not the Owner");
        payable(msg.sender).transfer(_amount);
    }

    function setOwner(address _owner) public {
        require(msg.sender == owner);
        owner = payable(_owner);
    }
}
