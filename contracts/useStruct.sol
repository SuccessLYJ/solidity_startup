// 使用外部的结构体
pragma solidity ^0.8.24;

import "./Todos.sol";

contract UseStruct {
    Todos public todos;

    function setTodos(Todos  _todos) public {
        todos = _todos;
    }
}