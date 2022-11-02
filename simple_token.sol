pragma solidity ^0.4.20;

contract ERC20Interface{
    string name public;
    string symbol public;
    uint decimals public;
    uint totalSupply public;
    
    function balanceOf(address _owner) public view returns (uint256 balance)
    function transfer(address _to, uint256 _value) public returns (bool success)
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
    function approve(address _spender, uint256 _value) public returns (bool success)
    function allowance(address _owner, address _spender) public view returns (uint256 remaining)
}

contract MyToken{
    mapping (address=> uint) balanceOf;

    constructor(){
        name="wei";
        symbol="bluseWei";
        decimals = 0;
        totalSupply =100000000;
    }

    function balanceOf(address _owner) public view returns (uint256 balance){
        balance = balanceOf[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool success){

    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success){

    }

    function approve(address _spender, uint256 _value) public returns (bool success){

    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){

    }
}