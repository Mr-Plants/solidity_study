pragma solidity ^0.4.0;

contract Test {
    uint256 data = 3;

    event ev(uint256 a);

    // 构造函数
    constructor(uint256 a) {
        data = a;
    }

    // 视图函数，同constant，不能修改变量，不能调用事件
    function viewTest() view {
        data = 3;
        emit ev(3);
    }

    // 纯函数集不能读取本地变量和事件，也不能修改
    function pureTest() pure returns (uint256) {
        // data=4;
        // return 1+data;
        return 1 + 2 + 3;
    }

    /*
    如果需要想这个合约转移以太币，必须实现fallback（回退）函数
    一个合约只能实现一个回退函数
    必须使用payable修饰
    在被转账或者外部调用合约方法（未找到）时被动调用
    应该保持逻辑简单，防止消耗gas过多
    */
    function() public payable {}
}

contract Caller {
    function pay(Test test) public {
        test.send(1 ether);
    }
}
