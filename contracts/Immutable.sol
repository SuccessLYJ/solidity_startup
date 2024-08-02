// lalala 
pragma solidity ^0.8.24;

// immutable 修饰的变量可以再构造函数中赋值，但后续不能再修改
contract Immutable {
    address public owner;
    address public immutable owner2;

    constructor() {
        owner = msg.sender;
        owner2 = msg.sender;
    }
}