Algorithm 7a
contract ExpensiveLoopExample {
    uint256 constant MAX_LOOP_ITERATIONS = 100; // Set a maximum number of iterations to prevent infinite loops
    function sum(uint256[] memory data) public pure returns (uint256) {
        uint256 total = 0;
        // Instead of using a loop, directly calculate the sum
        for (uint256 i = 0; i < data.length; i++) {
            total += data[i];
        }
        return total;
    }
}

Algorithm 7b
contract ExpensiveLoopExample {
    uint256 constant MAX_LOOP_ITERATIONS = 100; // Set a maximum number of iterations to prevent infinite loops
    function sumWithLimit(uint256[] memory data) public pure returns (uint256) {
        uint256 total = 0;
        uint256 iterations = 0;
        // Explicitly check for the array length to avoid going beyond the array boundaries
        while (iterations < data.length && iterations < MAX_LOOP_ITERATIONS) {
            total += data[iterations];
            iterations++;
        }
        return total;
    }
}
