// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract switchs{
   
    function calculator (int x, int y, uint op) pure external  returns(int ans){
        assembly {
            switch op
              case 1{
                  ans := add(x, y)
                  
              }
            
              case 2 {
                  ans := sub(x,y)
              }

              case 3 {
                  ans := mul(x,y)
              }

              case 4 {
                  if and( gt(x, 0), gt(y,0) ) {
                       ans := div(x, y)
                  }
              }

              case 5{
                  ans := mod(x, y)

              }
    }

}
}