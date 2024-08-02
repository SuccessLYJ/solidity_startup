// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//常量不能赋值后不能被修改

contract Constants {
    //编码规定常量使用大写字母加下划线租场
    uint public constant MAX_SUPPLY = 10000;
    uint public constant MAX_MINT = 10;

     address public constant MY_ADDRESS =
        0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_CONSTANT = 1234567890;

}