Algorithm 8
contract ConstantLoopExample {
    function constantOutcomeLoop() external pure returns (uint256) {
        uint256 sum = 0;
        // Loop for 10 iterations
        for (uint256 i = 0; i < 10; i++) {
            sum += i;
        }
        return sum;
    }
}
