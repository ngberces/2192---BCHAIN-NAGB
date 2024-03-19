// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract FallbackExample {
    event FallbackReceived(address sender, uint amount);
    
    event PaymentReceived(address payer, uint256 amount);
    
    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
    }
    
    receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
    }
}
// This activitry shows the use of fallback and receiver functions in solidity.