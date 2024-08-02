// gas

pragma solidity ^0.8.24;

/**
How much ether do you need to pay for a transaction?
You pay gas spent * gas price amount of ether, where

gas is a unit of computation
gas spent is the total amount of gas used in a transaction
gas price is how much ether you are willing to pay per gas
Transactions with higher gas price have higher priority to be included in a block.

Unspent gas will be refunded.
 */

/**
 * 你需要多少ether来支付一个交易？
 * 你支付gas花费 * gas价格数量的ether，其中
 * 
 * gas是一个计算单元
 * gas花费是交易中所花费的总gas
 * gas价格是你愿意支付的每gas
 * 
 * 高gas价格优先级 inclusion in a block
 * 
 * 未使用的gas将退还
 */

/**
 Gas Limit 
 There are 2 upper bounds to the amount of gas you can spend
gas limit (max amount of gas you're willing to use for your transaction, set by you)
block gas limit (max amount of gas allowed in a block, set by the network)
 
 */

/**
 * Gas 限额
 * 你可以设置的gas上限有2个
 * Gas限额(您愿意为您的交易使用的最大Gas量，由您设置)
 * 区块gas限制(一个区块允许的最大gas量，由网络设定)
 */
contract Gas {
    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.

    // 耗尽所有发送的gas导致你的交易失败。
    // 状态更改被撤销。
    // 消耗的gas不会退还。
    function forever() public {
        while (true) {
            i += 1;
        }
    }
}