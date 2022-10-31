pragma solidity ^0.4.0;

contract Testfunder{
    struct Funder {
        address addr;
        uint amount;
    }

    Funder funder;


    function newFunder() public {
        funder = Funder({addr:msg.sender,amount:20});
        // return funder;
    }
}