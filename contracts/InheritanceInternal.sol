contract A {
    uint[] events;

    function getEvents() public view returns(uint[]) {
        return events;
    }

    function f() internal {
        events.push(1);
        g();
    }
    
    function g() internal {
        events.push(2);
    }
}

contract B is A {
    function f() internal {
        events.push(3);
        super.f();
    }
    
    function g() internal {
        events.push(4);
        super.g();
    }
}

contract C is B {
    function fp() public {
        super.f(); // correct. events = [3, 1, 4, 2]
    }

    function fpA() public {
        A.f(); // wrong. events = [1, 4, 2]
    }
    
    function fpB() public {
        B.f(); // correct. events = [3, 1, 4, 2]
    }
}
