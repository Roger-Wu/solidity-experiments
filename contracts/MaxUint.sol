pragma solidity ^0.4.21;
// optimize=true&version=soljson-v0.4.23+commit.124ca40d.js

contract A {
    uint public a = 2**256-1;

    // 494 gas
    function f1() public view returns(uint) {
        return a;
    }
    
    // 253 gas
    function f2() public view returns(uint) {
        return 2**256-1;
    }

    // 272 gas
    function f3() public view returns(uint) {
        return 2**255;
    }

    // 316 gas
    function f4() public view returns(uint) {
        return 1 << 255;
    }
    
    // 209 gas
    function f5() public view returns(uint) {
        return 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    }
    
    // 228 gas
    function f6() public view returns(uint) {
        return 1e77;
    }
}
