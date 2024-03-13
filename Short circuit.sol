Algorithm 12

contract ShortCircuitExample {
    uint public a = 5;
    uint public b = 0;
    uint public c = 10;
    function divideIfBNonZero() public view returns (uint) {
        // If b is zero, no need to proceed with the division
        if (b != 0 && a / b > 2) {
            return a / b;
        } else {
            return 0;
        }
    }
    function doSomething() public view returns (bool) {
        // Short-circuiting in an OR condition
        if (a > b || b == 0) {
            return true; // If a > b, b == 0 will not be evaluated due to short-circuiting
        } else {
            return false;
        }
    }
}
