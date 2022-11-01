pragma solidity ^0.4.0;

contract ErrorHandle {
    function test(address addr) public payable returns (uint balance){
        require(msg.value %2 == 0,'even value required!');  // 检查输入（合约条件）等外部错误，比如余额不足等。不会消耗执行的gas
        uint balanceBrforeTransfer = this.balance;
        addr.transfer(msg.value/2);
        assert(this.balance == balanceBrforeTransfer - msg.value/2);  // 内部错误
        return this.balance;
    }
}