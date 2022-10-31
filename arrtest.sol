pragma solidity 0.4.0;

contract Arr {
    uint[] public a = [1, 2, 3];

    function h() public view returns (int){
        return a.length;
    }

}
