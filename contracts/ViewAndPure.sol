// view and pure functions

pragma solidity ^0.8.24;

contract ViewAndPure {
    uint public x = 1;

    // view functions do not modify state
    // view方法不修改状态
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // pure functions do not read from or modify state
    // prue方法不读取或修改状态
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}