// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public count;

    //get方法获取count
    function get() public view returns (uint256) {
        return count;
    }

    //自增方法
    function inc() public{
        count +=1;
    }

    //自减方法
    function dec() public{
        count -=1;
    }
}