contract A {
    uint[] events;
    
    function f() public {
        events.push(1);
    }

    function g() public {
        events.push(6);
    }
    
    function getEvents() public view returns(uint[]) {
        return events;
    }
}

contract B is A {
    function f() public {
        events.push(2);
        super.f();
    }
    
    function g() public {
        events.push(7);
        A.g();
    }
}

contract C is A {
    function f() public {
        events.push(3);
        super.f();
    }
    
    function g() public {
        events.push(8);
        A.g();
    }
}

contract D is B, C {
    // f(): events = [3, 2, 1] // correct. C.f -> B.f -> A.f
    // g(): events = [8, 6] // wrong. C.g -> A.g
}
