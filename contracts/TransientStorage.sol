pragma solidity ^0.8.24;
// 指定 Solidity 编译器版本

// 定义一个接口 `ITest`
interface ITest {
    function val() external view returns (uint256);
    function test() external;
}
// 定义 `Callback` 合约
contract Callback {
    uint256 public val;
    // 定义回退函数，当调用没有匹配的函数时执行
    fallback() external {
        val = ITest(msg.sender).val();
        // 从发送消息的地址所对应的合约获取 `val` 函数的返回值并赋值给当前合约的 `val`
    }
    // 外部函数，用于调用指定地址的 `test` 函数
    function test(address target) external {
        ITest(target).test();
    }
}

// 定义 `TestStorage` 合约
contract TestStorage {
    uint256 public val;
    // 公共函数，设置 `val` 为 123，并进行一个空的消息调用
    function test() public {
        val = 123;
        bytes memory b = "";
        msg.sender.call(b);
    }
}

// 定义 `TestTransientStorage` 合约
contract TestTransientStorage {
    bytes32 constant SLOT = 0;
    // 公共函数，使用汇编代码将 321 存储到指定的槽位，并进行一个空的消息调用
    function test() public {
        assembly {
            tstore(SLOT, 321)
        }
        bytes memory b = "";
        msg.sender.call(b);
    }
    // 公共视图函数，使用汇编代码从指定槽位获取值并返回
    function val() public view returns (uint256 v) {
        assembly {
            v := tload(SLOT)
        }
    }
}

// 定义 `ReentrancyGuard` 合约，用于防止重入攻击
contract ReentrancyGuard {
    bool private locked;
    // 定义一个修饰器 `lock`
    modifier lock() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }
    // 公共函数，使用 `lock` 修饰器防止重入攻击，并进行一个空的消息调用
    function test() public lock {
        // 忽略调用错误
        bytes memory b = "";
        msg.sender.call(b);
    }
}

// 定义 `ReentrancyGuardTransient` 合约，使用瞬态存储来实现防止重入攻击
contract ReentrancyGuardTransient {
    bytes32 constant SLOT = 0;
    // 定义修饰器 `lock`
    modifier lock() {
        assembly {
            if tload(SLOT) { revert(0, 0) }
            tstore(SLOT, 1)
        }
        _;
        assembly {
            tstore(SLOT, 0)
        }
    }
    // 公共函数，使用 `lock` 修饰器防止重入攻击，并进行一个空的消息调用
    function test() external lock {
        // 忽略调用错误
        bytes memory b = "";
        msg.sender.call(b);
    }
}