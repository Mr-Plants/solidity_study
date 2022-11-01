pragma solidity ^0.4.0;

contract A {
    uint256 public balance;  // 会自动生成一个访问器（类似get函数）
    uint256 private amount;
    uint256 internal sum;

    // 尽自己合约内部可见
    function privateFunction(uint256 a) private returns (uint256) {
        return a + 1;
    }

    // 自己合约和外部事件都可以调用，不写默认为public。
    function publicFunction(uint256 a) public returns (uint256) {
        // externalFunction(1);  // 直接这样调用会报错
        this.externalFunction(1); // 这样相当于外部消息调用
        return a + 1;
    }

    // 只能通过外部消息或者外部合约调用，内部无法访问。如果一个函数只需要给外部调用，应该是要external，其消耗的gas要比public小
    function externalFunction(uint256 a) external returns (uint256) {
        return a + 1;
    }

    // 只能在内部合约和继承合约中调用
    function internalFunction(uint256 a) internal returns (uint256) {
        return a + 1;
    }
}

contract B {
    function Test() public view {
        A contractA = new A();
        // 其他合约仅能访问external和public
        contractA.externalFunction(1);
        contractA.publicFunction(1);
    }
}

// 继承
contract A2 is A {
    function test()public view {
        balance = 2;  // public
        // amount=2;  // private 私有的访问不了
        sum = 2333;  // internal
    }
}
