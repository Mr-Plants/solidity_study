// solidity的版本号
pragma solidity ^0.4.0

import "solidity2.sol" as Test2;

contract Test {
    uint a = 233;  // 无符号整数，只能取大于零的数，可以在后面跟位数表示以8位递增，从 8 位到 256 位。如下
    uint8 b = 22;  // 表示8位无符号整数，不写位数表示uint256
    int c = - 2;  // 有符号整数 正整数，负整数
    bool boolA = true;  // 布尔类型
    bool boolB = true;  // 布尔类型

    function testBool() public returns (bool){
        return boolA && boolB;
    }
}
