//lalala
pragma solidity ^0.8.24;

/**
 * 对状态变量的读写
 * 要编写或更新状态变量，您需要发送一个事务。
 * 另一方面，您可以免费读取状态变量，而无需支付任何交易费用。
 */
contract SimpleStorage {
    //创建一个状态变量
    uint256 public num;

    //You need to send a transaction to write to a state variable.
    //你需要发送一个事务来写入状态变量。
    //set方法
    function set(uint256 _num) public {
        num = _num;
    }

    //get方法
    // You can read from a state variable without sending a transaction.
    // 您可以读取状态变量，而无需发送事务。
    function get() public view returns (uint256) {
        return num;
    }
}