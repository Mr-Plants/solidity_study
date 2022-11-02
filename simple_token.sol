pragma solidity ^0.4.20;

contract ERC20Interface {
    string name;
    string symbol;
    uint decimals;
    uint totalSupply;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function transfer(address _to, uint256 _value) public returns (bool success);

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);

    function approve(address _spender, uint256 _value) public returns (bool success);

    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
}

contract MyToken is ERC20Interface{
    mapping(address => uint) balanceOf;
    mapping(address => mapping(address => uint)) internal allowed;

    constructor(){
        name = "wei";
        symbol = "brutesWei";
        decimals = 0;
        totalSupply = 100000000;
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        require(_to != address(0), "转账地址为空");
        require(balanceOf[msg.sender] >= _value, "余额不足");
        require(balanceOf[_to] + _value >= balanceOf[_to], "余额溢出");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        success = true;
        emit Transfer(msg.sender, _to, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success){
        success = true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success){
        success = true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){
        remaining = allowed[_owner][_spender];
    }
}
