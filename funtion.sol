pragma solidity ^0.4.0;

contract T{
    function test(int a,int b) public view returns(int sum,int mul){
        sum = a+b;
        mul = a*b;
    }

    function f() public view returns(int sum,int mul){
        (sum,mul) = test({a:1,b:3});
    }

    function g() public view returns(int,bool,int){
        return (7,true,5);
    }

    function h() public view{
        var (x,y,z) = g();  // 参数解构
        (,y,z) = g();  // 省略参数
        (x,z) = (z,x);  // 括号是元祖
    }
}