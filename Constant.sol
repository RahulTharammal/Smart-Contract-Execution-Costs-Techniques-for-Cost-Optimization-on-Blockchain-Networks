Algorithm 5
contract MyContract {
    // Declaring a constant state variable
    uint256 constant MY_CONSTANT_VALUE = 100;
    // Function to read the constant value
    function getConstantValue() public view returns (uint256) {
        return MY_CONSTANT_VALUE;
    }
}
