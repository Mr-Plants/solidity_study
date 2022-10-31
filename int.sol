pragma solidity ^0.4.0;

contract Test{
    uint x = 233;  // 无符号整数，只能取大于零的数，可以在后面跟位数表示以8位递增，从 8 位到 256 位。如下
    uint8 y = 22;  // 表示8位无符号整数，不写位数表示uint256
    int z = - 2;  // 有符号整数 正整数，负整数
    int a = 20;

    function leftshift() public constant returns (int){
        return a << 1;   // 左移相当于 a * 2**1   20*2
    }

    function rightshift() public constant returns (int){
        return a >> 2;   // 右移相当于 a / 2**2    20/4
    }
}
