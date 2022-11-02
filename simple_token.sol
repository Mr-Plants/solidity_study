pragma solidity ^0.4.20;

contract ERC20Interface {
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    function transfer(address _to, uint256 _value)
        public
        returns (bool success);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success);

    function approve(address _spender, uint256 _value)
        public
        returns (bool success);

    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256 remaining);
}

contract MyToken is ERC20Interface {
    mapping(address => uint256)public balanceOf;
    mapping(address => mapping(address => uint256)) internal allowed;

    constructor() public {
        name = "wei";
        symbol = "brutesWei";
        decimals = 0;
        totalSupply = 100000000;
        balanceOf[msg.sender] = totalSupply;
        // 铸币人拥有全部
    }

    function transfer(address _to, uint256 _value)
        public
        returns (bool success)
    {
        require(_to != address(0), "转账地址为空");
        require(balanceOf[msg.sender] >= _value, "余额不足");
        require(balanceOf[_to] + _value >= balanceOf[_to], "余额溢出");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        success = true;
        emit Transfer(msg.sender, _to, _value);
    }

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        require(_to != address(0), "转账地址为空");
        require(balanceOf[_from] >= _value, "余额不足");
        require(balanceOf[_to] + _value >= balanceOf[_to], "余额溢出");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        success = true;
        emit Transfer(_from, _to, _value);
    }

    function approve(address _spender, uint256 _value)
        public
        returns (bool success)
    {
        allowed[msg.sender][_spender] = _value;
        success = true;
        emit Approval(msg.sender, _spender, _value);
    }

    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256 remaining)
    {
        remaining = allowed[_owner][_spender];
    }
}
