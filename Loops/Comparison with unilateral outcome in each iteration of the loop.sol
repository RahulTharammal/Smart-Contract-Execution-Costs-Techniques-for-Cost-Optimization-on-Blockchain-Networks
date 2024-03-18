Algorithm 11

contract OneSidedComparison {
    uint[] public numbers;

    constructor() {
        // Initialize the array with some numbers
        numbers.push(5);
        numbers.push(10);
        numbers.push(15);
        numbers.push(20);
        numbers.push(25);
    }

    function countGreaterThan(uint threshold) external view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < numbers.length; i++) {
            // Compare if the number is greater than the threshold
            if (numbers[i] > threshold) {
                count++;
            }
        }
        return count;
    }
}
