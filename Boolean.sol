Algorithm 3a
contract BooleanUint8 {
    uint8 public flag;
    function setFlag(bool _value) external {
        if (_value) {
            flag = 1;
        } else {
            flag = 0;
        }
    }
    function getFlag() external view returns (bool) {
        return flag == 1;
    }
}

Algorithm 3b
contract BooleanBool {
    bool public flag;
    function setFlag(bool _value) external {
        flag = _value;
    }
    function getFlag() external view returns (bool) {
        return flag;
    }
