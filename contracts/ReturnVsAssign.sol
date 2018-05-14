pragma solidity ^0.4.23;
// #optimize=true&version=soljson-v0.4.23+commit.124ca40d.js

contract A {
    function f() public view returns(uint a) {
        return 1; // 184 gas
    }

    function g() public view returns(uint a) {
        a = 1; // 206 gas
    }
}
