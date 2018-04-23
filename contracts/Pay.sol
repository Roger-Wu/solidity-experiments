contract Pay {
    // gas: 21272 + 131. whether msg.value > 0 or not.
    function pay() public payable {}

    // gas: 21272 + 172
    function f() public {}
    
    function getBalance() public view returns (uint){
        return address(this).balance;
    }
}
