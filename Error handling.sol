Algorithm 13

contract ErrorHandlingExample {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to demonstrate require statement for input validation
    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(amount > 0, "Withdrawal amount must be greater than zero");
        
        // Transfer ETH to the caller
        payable(msg.sender).transfer(amount);
    }
    // Function to demonstrate revert statement for custom error message
    function divide(uint256 a, uint256 b) external pure returns (uint256) {
        require(b != 0, "Division by zero error");
        return a / b;
    }
    // Function to demonstrate assert statement for internal consistency checks
    function assertExample(uint256 a, uint256 b) external pure returns (uint256) {
        assert(a >= b); // Assertion fails if a is not greater than or equal to b
        
        return a - b;
    }
}
