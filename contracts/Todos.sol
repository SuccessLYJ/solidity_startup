//结构体

pragma solidity ^0.8.24;


contract Todos{
    struct Todo {
        string text;
        bool completed;
    }

    //待办事项
    Todo[] public todos;

    //创建待办事项

    function createTodo(string calldata _text) public {

        // 3 ways to initialize a struct
        // 3种初始化结构体
        todos.push(Todo(_text,false));

        todos.push(Todo({text:_text,completed:false}));

        Todo memory todo;
        todo.text = _text;
        todo.completed = false;
        todos.push(todo);
    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    // Solidity自动为'todos'创建了一个getter，所以你不需要这个函数。

    //修改text
    function updateTodo(uint _index,string calldata _text) public {
        todos[_index].text = _text;
    }

    //完成待办
    function toggleCompleted(uint _index) public {
        todos[_index].completed = todos[_index].completed;
    }
}