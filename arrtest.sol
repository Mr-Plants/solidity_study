pragma solidity ^0.4.0;

contract Arr {
    uint[] public a = [1, 2, 3];
    string public s = 'afsdjb';

    function h() public view returns (uint){
        return a.length;
    }

    function v() public view returns (uint){
        return bytes(s).length;
    }

    function v2() public view returns (byte){
        return bytes(s)[1];
    }

    function v3(uint len) public view returns (uint){
        uint[] memory a = new uint[len];
        return a.length;
    }
}
