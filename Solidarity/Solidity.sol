// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 - 1
                         //        uint8   0 to 2**8   - 1
                         //        uint16  0 to 2**16  - 1
    int public i = 123; // int =   int256 -2**255 to 2**255 - 1
                        //         int256 -2**217 to 2**217 - 1
    
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x1f9090aaE28b8a3dCeaDf281B0F12828e676c326;
}