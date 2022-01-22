pragma solidity ^0.6.0;


contract Conditions {
    // Conditions
    // Loop

    uint[] public numbers = [2,5,77,11,18,30,6,90];

    address public owner;

    constructor() public {
        owner = msg.sender;
    } 

    function isOwner() public view returns(bool){
        return(msg.sender == owner);
    }

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])){
                count ++;
            }
        }
        return count;
    }

    function isEvenNumber(uint _number) public view returns(bool) {
        if(_number % 2 == 0){
            return true;
        } else{
            return false;
        }
    }

}