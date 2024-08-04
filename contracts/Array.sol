//数组

pragma solidity ^0.8.24;

contract Array{
    //Array can have a compile-time fixed size or a dynamic size.
    // 数组可以有编译时固定的大小或动态大小。
    //几种不同的初始化数组的方式
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    uint256[10] public arr3;

    function get(uint256 index) public view returns(uint256){
        return arr[index];
    }

    function getArr() public view returns(uint256[] memory){
        return arr;
    }

    function append(uint256 elem) public  {
        arr.push(elem);
    }

    function pop() public {
        arr.pop();
    }

    function lenght() public view returns (uint256){
        return arr2.length;
    }

    //del
    function remove(uint256 index) public {
        delete arr[index];
    }

    function examples() external pure {
        // 创建一个长度为5的动态数组
        uint256[] memory x = new uint256[](5);
    }

    //Examples of removing array element    Remove array element by shifting elements from right to left

    // 删除数组元素示例 通过从右向左将元素移到删除位置

    function remove2(uint256 index) public {
        require(index <arr.length, "index out of bound");

        for (uint256 i = index; i < arr.length; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external{
        arr = [1,2,3,4,5];
        remove2(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove2(0);
        assert(arr.length == 0);
    }

    function remove3(uint256 index) public {
        require(index < arr.length, "index out of bound");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function test2() external{
         arr = [1, 2, 3, 4];

        remove3(1);
        // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove3(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);

    }
}   