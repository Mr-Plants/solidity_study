pragma solidity ^0.4.0;

contract Testmapping{
    mapping(address=> uint) public balance;   // δΈε―ιε


    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}