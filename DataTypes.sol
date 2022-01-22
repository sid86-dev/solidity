pragma solidity ^0.6.0;

contract DataType {
    
    // State Variable

    uint public myUint = 1;
    int public myInt = -5;
    // uint256 compromises performance
    uint256 public myUint256 = 1998989;
    uint8 public myUint8 = 5;

    string public myString = "Hello World!";
    bytes32 public myBytes32 = "Hello!";
    address public myAddress = 0x8281D00277d2C903705c732aC14A3103ba15a1cd;

    struct MyStruct {
        uint myUint;
        string myString;
    }   

    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    // Local Variable
 
    function getValue() public pure returns(uint) {
        uint value = 1;
        value ++;
        return value;
    }
}