Algorithm 2a
contract StringExample {
    string public userName;
    function setUserName(string memory _name) public {
        userName = _name;
    }
    function getUserName() public view returns (string memory) {
        return userName;
    }
}
Algorithm 2b
contract Bytes32Example {
    bytes32 public userName;
    function setUserName(bytes32 _name) public {
        userName = _name;
    }
    function getUserName() public view returns (bytes32) {
        return userName;
    }
}
