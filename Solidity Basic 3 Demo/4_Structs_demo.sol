// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "contracts/StructDeclaration.sol";

contract CarRegistry {
    struct Car {
        string model;
        uint year;
        address owner;
    }
}