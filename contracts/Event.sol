// 事件
pragma solidity ^0.8.24;


contract Event {
   
   event Log(address indexed sender,string message);

    event anotherLog();

    function test() public {
        emit Log(msg.sender,"Hello World");
        emit Log(msg.sender,"Hello EVM");
        emit anotherLog();
    }

}