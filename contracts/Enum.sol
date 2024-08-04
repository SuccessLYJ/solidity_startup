// 枚举值
pragma solidity ^0.8.24;

contract Enum {
   enum Status{
      Pending, // 0
      Shipped, // 1
      Accepted, // 2
      Rejected, // 3
      Canceled // 4
   }

     // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    // 默认值是枚举类型定义的第一个元素，在本例中为“Pending”

    //get
    Status public status;

    function get() public view returns(Status) {
        return status;
    }

    //set
    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

     // delete resets the enum to its first value, 0
     // delete重置枚举到第一个值，0
     function reset() public {
        delete status;
     }

}