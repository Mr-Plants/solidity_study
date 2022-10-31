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
        uint[] memory b = new uint[] (len);
        // b.length=10;  会报错
        // a.length = 10; 不会报错
        return b.length;
    }

    function push() public view returns (uint){
        a.push(4);
        return a.length;
    }
}
