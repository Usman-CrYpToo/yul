// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract writingInFixedArray {
      uint256[5] public arr;

      function writeInArray(uint index, uint val) external {
           assembly {
               let arrSlot := arr.slot
               let indexSlot := add(arrSlot,index)

                sstore(indexSlot,val)
           }
      }
}