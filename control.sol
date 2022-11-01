pragma solidity ^0.4.0;

contract h {
    // 求1-10以内的奇数和，即1+3+5+7+9 = 25
    function test() public view returns (uint sumOfOdd) {
        uint i = 0;
        while (true) {
            i++;

            if (i > 10) break;
            if (i % 2 == 0) {
                continue;  // 故意这么写，实际不用
            }else{
                sumOfOdd += i;
            }
        }
    }
}
