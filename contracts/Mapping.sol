//映射 map

pragma solidity ^0.8.2;

/**Maps are created with the syntax mapping(keyType => valueType).

The keyType can be any built-in value type, bytes, string, or any contract.

valueType can be any type including another mapping or an array.
 */

/**Maps（映射）
映射是使用语法 mapping(keyType => valueType) 创建的。
键类型可以是任何内置值类型、字节、字符串或任何合约。
值类型可以是任何类型，包括另一个映射或数组。
 */
contract Mapping {
    // Mapping from address to uint
    // 地址到uint的映射
    mapping(address => uint) public myMap;

    //get
    function get(address _add) public view returns (uint) {
        return myMap[_add];
    }

    //set 
    function set(address _add,uint _value) public{
        myMap[_add] = _value;
    }

    //删除
    function remove(address _add) public {
        delete myMap[_add];
    }

    //嵌套映射
    mapping(address => mapping(uint256 => bool)) public nested;
    //get方法  先取外面的再取里面的
    function getNested(address _add,uint256 _key) public view returns (bool){
        nested[_add][_key];
    }

    //set 方法
    function setNested(address _add,uint256 _key,bool _value) public {
        nested[_add][_key] = _value;
    }

    //删除方法
    function removeNested(address _add,uint256 _key) public {
        delete nested[_add][_key];
    }

}