// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract byteTobool{
     
     function returnTrue() pure external returns(bool){
         bool  rTrue ;

         assembly {
              rTrue := 1
         }

         return rTrue;
     }

     function returnFalse() pure external returns(bool){
         bool rFalse;

         assembly {
             rFalse := 0
         }

         return rFalse;
     }

     function bytes32TOBoolTrue () pure external returns(bool){
         bool byte_bool;
            
         bytes32 rTrue = "0x1";  

         assembly {
              byte_bool := rTrue
         }

         return byte_bool;

     }

     function bytes32ToBoolFalse () pure external returns(bool) {
          bool byte_bool;

          bytes32 rFalse = bytes32(0);

          assembly {
               byte_bool := rFalse
          }
          return byte_bool;
     }

     
}