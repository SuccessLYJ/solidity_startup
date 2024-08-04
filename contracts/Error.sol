// 抛异常

pragma solidity ^0.8.24;

// require 再执行前验证参数

// 

contract Error {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "Input must be <= 10");
        // 如果条件不满足，则抛出异常
    }

    function testRevert(uint _i) public pure {
        if (_i > 10) {
            revert("Input must be <= 10");
        }
    }

    uint public num = 123;
    function testAssert() public view {
        assert(num == 123);
        // 如果条件不满足，则抛出异常
    }
    //自定义异常

    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        if (address(this).balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: address(this).balance,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;


    //存款
    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;
        require(newBalance >= oldBalance, "Overflow");
        balance = newBalance;
        assert(balance >= oldBalance);
    }

    //取款
    function withdraw(uint _amount) public {
        uint oldBalance = balance;
        require(balance >= _amount, "Underflow");
        if (balance < _amount) {
            revert("Underflow");
        }
        balance -= _amount;
        assert(balance <= oldBalance);
    }
}