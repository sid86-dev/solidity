pragma solidity ^0.6.0;

contract Arrays{

    // Array
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ['Apple', 'Banana', 'Cat'];
    string[] public emptyArray;

    // 2D Array

    uint[][] public array2D = [[1,2,3],[4,5,6]];

    function addValue(string memory _value) public {
        emptyArray.push(_value);
    } 

    function valueCount() public view returns(uint){
        return emptyArray.length;
    }
}