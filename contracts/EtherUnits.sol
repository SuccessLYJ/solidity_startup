// 略略略

pragma solidity ^0.8.24;

/**
 * Ether and Wei
Transactions are paid with ether.
Similar to how one dollar is equal to 100 cent, one ether is equal to 10(18) wei.
 */

/**
 * ether 和 wei
 * 交易需要用ether支付
 * 相当于一个美元等于100分，一个ether等于10(18)wei
 */

contract EtherUnits {
    //oneWei变量存储了1 Wei（以太坊中的最小单位）的值，即1。
    uint public oneWei = 1 wei;

    //isOneWei变量检验了1 Wei是否等于1，结果为真。
    bool public isOneWei = 1 wei == 1;

    //oneEther变量存储了1 Ether（以太坊中的常用单位）的值，即1e18（1e18 Wei）。
    uint public oneEther = 1 ether;

    // isOneEther变量检验了1 Ether是否等于1e18 Wei，结果为真。
    bool public isOneEther = 1 ether == 1e18;
}