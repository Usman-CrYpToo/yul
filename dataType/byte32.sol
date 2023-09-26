// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract yulDataType{
 
 //yul has only one datatype which is bytes32 
 //because in solidity we can assign any type of data e.g string, uint to bytes32;

   function getUnit256() pure external returns(uint256){
        uint value;
         assembly{
              value := 100
         }

         return value ;
   }

}