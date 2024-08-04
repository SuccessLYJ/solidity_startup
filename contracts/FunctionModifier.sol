// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionModifier {

    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        //将交易发送方设置为合约的所有者。
        owner = msg.sender;
    }

    modifier OnlyOwner(){
        require (msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }

    //验证地址
    modifier ValidAddress(address _addr) {
        require(_addr != address(0), "Invalid address");
        _;
    }

    //修改所有者
    function changeOwner(address _newOwner) public OnlyOwner ValidAddress(_newOwner) {
        owner = _newOwner;
    }

    //对操作加锁
    modifier NoReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public NoReentrancy {
        x -= i;
        if (i > 1) {
            decrement(i - 1);
        }
    }

}