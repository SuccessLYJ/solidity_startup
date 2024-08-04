// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Function {
    
    //方法可以返回多个值
    function returnMany() public pure returns(uint256, bool, uint256) {
        return (1, true, 2);
    }

    //返回值可以命名
    function named() public pure returns(uint256 x, bool b, uint256 y) {
        return (1, true, 2);
    }

    //可以省略return
    function assigned() public pure returns(uint256 x, bool b, uint256 y) {
        x = 1;
        b = true;
        y = 2;
    }

    //调用另一个函数时使用解构赋值
    //函数返回多个值。
    function destructuringAssignments() public pure returns(uint256, bool, uint256) {
        (uint256 i, bool b, uint256 j) = returnMany();
        return (i, b, j);
    }
    //不能使用map输入输出可以使用数组输入输出

   function arrayInput(uint256[] memory _arr) public {}
    uint256[] public arr;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}

// Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    function callFunc() external pure returns (uint256) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint256) {
        return someFuncWithManyInputs({
            a: address(0),
            b: true,
            c: "c",
            x: 1,
            y: 2,
            z: 3
        });
    }
}