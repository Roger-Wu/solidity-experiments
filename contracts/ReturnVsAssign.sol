contract A {
    function f() public view returns(uint a) {
        return 1; // 202 gas
    }

    function g() public view returns(uint a) {
        a = 1; // 224 gas
    }
}
