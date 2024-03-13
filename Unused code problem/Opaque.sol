Algorithm 15

pragma solidity ^0.8.0;

contract OpaquePredicateExample {
    // Function to determine if a given number is prime
    function isPrime(uint256 _number) public pure returns (bool) {
        if (_number <= 1) {
            return false;
        }
        if (_number <= 3) {
            return true;
        }
        if (_number % 2 == 0 || _number % 3 == 0) {
            return false;
        }
        for (uint256 i = 5; i * i <= _number; i += 6) {
            if (_number % i == 0 || _number % (i + 2) == 0) {
                return false;
            }
        }
        return true;
    }

    // Function demonstrating an opaque predicate
    function opaquePredicate(uint256 _input) public pure returns (bool) {
        // Check if the input number is prime
        bool isInputPrime = isPrime(_input);
        
        // Opaque predicate: Return true only if input is prime AND its last digit is 7
        return isInputPrime && (_input % 10 == 7);
    }
}
