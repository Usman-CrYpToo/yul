// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract readSmallArray {
      uint16[3] public arr = [1,2,3];

      function getIndexVal(uint256 index) external view returns(uint16 val) {
           assembly {
               let arraySlot := arr.slot
            let  slot := sload(arraySlot)
                
             let offset := mul(2, 8) // as the 2 bytes 

             let getIndexOffset := mul(offset, index)

             val := shr(getIndexOffset, slot)

           }
      }




      function readSlot() external view returns(bytes32 slot) {
            assembly {
                 let slotNo := arr.slot
                 
                 slot := sload(slotNo)

            }
      }      
}