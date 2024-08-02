// 描述已下子
pragma solidity ^0.8.24;

contract Primitives {
    //布尔值
    bool public boo = true;

    //无符号整形数值
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123;

    //有符号整形数值
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123; //int 与 int256 相同

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    //字节数组

    bytes1 a = 0xb5; //[0xb5]
    bytes1 b = 0x59; //[0x59]

    //默认赋值
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000


}