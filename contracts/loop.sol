//循环

pragma solidity ^0.8.24;

contract Loop{
   // for 循环
   function forLoop() public pure returns(uint){
       for (uint i = 0; i < 10; i++) {
         if(i == 3){
            continue;
         }

         if(i == 5){
            break;
         }
       }
   }

   //while 循环
   function whileLoop() public pure returns(uint){
       uint i = 0;
       while(i < 10){
           i++;
       }
   }
}