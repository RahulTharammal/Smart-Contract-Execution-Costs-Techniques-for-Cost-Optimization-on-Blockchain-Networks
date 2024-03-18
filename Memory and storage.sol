contract StorageExample {
    uint256[] public data; // This array is stored in storage
    // Function to add data to the array stored in memory
    function addDataToMemory(uint256 _value) public pure returns(uint256) {
        uint256[] memory tempData; // Declaring a memory array
        tempData.push(_value); // Adding data to the memory array
        return tempData[0]; // Returning the data (not stored permanently)
    }
    // Function to add data to the array stored in storage
    function addDataToStorage(uint256 _value) public {
        data.push(_value); // Adding data to the storage array
    }
    // Function to retrieve data from the array stored in storage
    function getDataFromStorage(uint256 _index) public view returns(uint256) {
        require(_index < data.length, "Index out of range");
        return data[_index]; // Retrieving data from the storage array
    }
}
