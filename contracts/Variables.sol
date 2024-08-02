// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
在 Solidity 中有 3 种类型的变量：
local（局部变量）
    在函数内部声明，
    不会存储在区块链上。
state（状态变量）
    在函数外部声明，
    存储在区块链上。
global（全局变量）（提供关于区块链的信息） 
 */
 
contract Variables {
    //状态变量
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // 局部变量
        uint i = 456;

        // 全局变量 存储区块链的信息
        uint timestamp = block.timestamp; // 返回当前区块的时间戳
        address sender = msg.sender; // 调用者的地址
    }
}