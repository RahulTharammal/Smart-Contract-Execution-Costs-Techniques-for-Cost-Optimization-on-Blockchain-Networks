contract LoopFusionExample {
    uint256[] public data1;
    uint256[] public data2;
    uint256[] public results1;
    uint256[] public results2;
    constructor() {
        // Initialize data arrays with some values
        data1 = [1, 2, 3, 4, 5];
        data2 = [6, 7, 8, 9, 10];
    }
    function processData() public {
        // Loop fusion: Combine two loops into one
        // Initialize result arrays with the same length as data arrays
        results1 = new uint256[](data1.length);
        results2 = new uint256[](data2.length);
        // Iterate over data1 and data2 in a single loop
        for (uint256 i = 0; i < data1.length; i++) {
            // Perform some computation on data1 element
            results1[i] = data1[i] * 2;
            // Perform some computation on data2 element
            results2[i] = data2[i] * 3;
        }
    }
}
