// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  HelloWord{
    //定义一个存储的字符串 storageMsg
    string storeMsg;

    //set 方法
    function set(string memory  message) public {
        storeMsg = message;
    }
    //get 方法

    function get() public view returns (string memory) {
        return storeMsg;
    }


}