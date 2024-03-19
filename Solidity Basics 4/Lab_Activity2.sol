// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public immutable creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address indexed from, uint256 amount);
    event EtherSent(address indexed to, uint256 amount);
    event ContractDestroyed(address indexed recipient, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        remainingEth += msg.value;
        emit EtherReceived(msg.sender, msg.value);
    }

    function sendEther(address payable _recipient, uint256 _amount) public onlyOwner {
        require(_amount <= address(this).balance, "Insufficient balance");
        _recipient.transfer(_amount);
        remainingEth -= _amount;
        emit EtherSent(_recipient, _amount);
    }

    function destroy() public onlyOwner {
        emit ContractDestroyed(owner, address(this).balance);
        selfdestruct(owner);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
