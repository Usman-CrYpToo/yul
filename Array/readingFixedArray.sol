// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract readArray {
     uint256[5] arr = [1,2,3,4,5];
     
     function getSlot(uint index) external view returns(bytes32 slot){
         assembly{
            let arrSlot := arr.slot
            let slotno := add(arrSlot, index)
            slot := sload(slotno)
         }
     }

     function getIndexValue(uint index) external view returns(uint256 val) {
           assembly {
               let arraySlot := arr.slot
               
               let indexSlot := add(arraySlot,index)
               
               val := sload(indexSlot)
               
           }
     }
     
}