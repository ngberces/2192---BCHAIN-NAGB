// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract CalculateGrade {
address public owner;
uint256 public name;
uint256 public finalGrade;
uint256 public midtermGrade;
uint256 public prelimsGrade;
uint256 public gradeStatus;

modifier onlyOwner() {
require(msg.sender == owner, "Only contract owner can call this function");
_;
}

modifier validprelimsGrade(uint256 _prelimsGrade) {
require(_prelimsGrade > 0, "Hourly prelimsGrade must be greater than zero");
_;
}

modifier validmidtermGrade(uint256 _midtermGrade) {
require(_midtermGrade > 0, "midtermGrade worked must be greater than zero");
_;
}

constructor() {
owner = msg.sender;
}

function setName(uint256 _name) public onlyOwner {
name = _name;
}

function setfinalGrade(uint256 _finalGrade) public onlyOwner {
finalGrade = _finalGrade;
}

function setmidtermGrade(uint256 _midtermGrade) public onlyOwner validmidtermGrade(_midtermGrade) {
midtermGrade = _midtermGrade;
}

function setprelimsGrade(uint256 _prelimsGrade) public onlyOwner validprelimsGrade(_prelimsGrade) {
prelimsGrade = _prelimsGrade;
}

function Calculate_Grade() public onlyOwner {
require(prelimsGrade > 0 && midtermGrade > 0 && finalGrade > 0, "Hourly prelimsGrade or midtermGrade worked is zero");
gradeStatus = prelimsGrade + midtermGrade + finalGrade / 3;
}
}