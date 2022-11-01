pragma solidity ^0.4.0;

contract TestApi{
    constructor() payable {}

    function h() public view returns (address){
        return msg.sender;   // 交易发起方地址
        // return msg.value;   // 交易附加的以太数量，单位wei
        // return block.coinbase;  // 当前区块的矿工地址
        // return block.difficulty;  // 当前区块的计算难度
        // return block.number;   //当前区块的序号
        // return block.timestamp;  // 当前区块的时间戳（秒）
        // return now;  // 在 0.7.0, now ( block.timestamp 的别名) 被移除了。
        // return tx.gasprice;   // 当前交易gas单价
    }


    function pay() public payable returns (uint){
        return msg.value;
    }
}