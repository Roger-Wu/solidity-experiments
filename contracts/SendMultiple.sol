contract SendMultiple {
    // send 1 ether to multiple.
    // addr.length to gas
    // 1: 31068 = 23064 + 8004 = 21656 + 1408 + 8004
    // 2: 40101 = 24472 + 15629 = 21656 + 1408 * 2 + 15629
    // 3: 49134 = 25880 + 23254 = 21656 + 1408 * 3 + 23254
    // ==============
    // 22035 + 9033 * n
    function transferMultiple(address[] addrs) public payable {
        uint val = msg.value / addrs.length;
        for(uint i = 0; i < addrs.length; i++) {
            addrs[i].transfer(val);
        }
    }
    
    // send 1 ether to multiple.
    // 1: 31072
    // 2: 40087
    // 3: 49102
    // -------------
    // n: 22057 + 9015 * n
    function sendMultiple(address[] addrs) public payable {
        uint val = msg.value / addrs.length;
        for(uint i = 0; i < addrs.length; i++) {
            addrs[i].send(val);
        }
    }
}
