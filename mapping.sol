pragma solidity ^0.4.0;

contract Testmapping{
    mapping(address=> uint) public balance;   // 不可遍历


    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}