// 数据位置


// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity  ^0.8.24;

//Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
//storage 是存储在合约存储区中，memory 是存储在函数调用栈中，calldata 是存储在函数调用数据区中。

/**
 * storage variable is a state variable (store on blockchain)
 * memory variable is in memory and it exists while a function is being called
 * calldata special data location that contains function arguments
 */

/**
 * 存储变量是状态变量（存储在区块链上）
 * 内存变量是在函数调用期间存在于内存中，并且仅在函数调用期间存在
 * calldata 是一个特殊的数据位置，其中包含函数参数
 */

contract DataLocations {
    // 定义一个公共的 uint256 类型的数组
    uint256[] public arr;
    // 定义一个公共的映射，将 uint256 映射到 address
    mapping(uint256 => address) map;

    // 定义一个结构体
    struct MyStruct {
        uint256 foo;
    }

    // 定义一个将 uint256 映射到 MyStruct 结构体的映射
    mapping(uint256 => MyStruct) myStructs;

    // 公共函数 f
    function f() public {
        // 调用内部函数 _f，并传递状态变量
        _f(arr, map, myStructs[1]);

        // 从映射中获取一个结构体，并将其存储在存储位置
        MyStruct storage myStruct = myStructs[1];
        // 在内存中创建一个结构体
        MyStruct memory myMemStruct = MyStruct(0);
    }

    // 内部函数 _f，接收存储位置的变量
    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // 在这里对传递进来的存储位置的变量进行操作
    }

    // 公共函数 g，接收内存中的数组，并返回内存中的数组
    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        // 在这里对内存中的数组进行操作并返回
    }

    // 外部函数 h，接收调用数据中的数组
    function h(uint256[] calldata _arr) external {
        // 在这里对调用数据中的数组进行操作
    }
}