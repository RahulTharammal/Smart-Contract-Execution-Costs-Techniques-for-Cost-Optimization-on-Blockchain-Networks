
Algorithm 6a
contract MappingExample {
    mapping(address => uint256) public balances;
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}

Algorithm 6b
contract ArrayExample {
    uint256[] public numbers;
    function addNumber(uint256 _number) public {
        numbers.push(_number);
    }
    function getNumber(uint256 _index) public view returns (uint256) {
        require(_index < numbers.length, "Index out of bounds");
        return numbers[_index];
    }
}
