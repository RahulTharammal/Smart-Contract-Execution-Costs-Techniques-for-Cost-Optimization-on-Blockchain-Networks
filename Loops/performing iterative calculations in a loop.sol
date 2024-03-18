Algorithm 10

contract CalculationLoop {
    function calculateSum(uint256[] memory numbers) public pure returns (uint256) {
        uint256 sum = 0;
        // Loop through the array and calculate the sum
        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    function calculateProduct(uint256[] memory numbers) public pure returns (uint256) {
        uint256 product = 1;
        // Loop through the array and calculate the product
        for (uint256 i = 0; i < numbers.length; i++) {
            product *= numbers[i];
        }
        return product;
    }
}
