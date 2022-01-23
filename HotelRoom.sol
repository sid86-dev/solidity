pragma solidity ^0.6.0;


// simple hotelroom booking contract

contract HotelRoom{

    address payable public owner;

    enum Statuses {Vacant, Occupied}
    Statuses currentStatus;

    event Occupy(address _occupent, uint _value);


    constructor() public{
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

        // Check Status
    modifier onlyWhileVacant{
        require(currentStatus == Statuses.Vacant, "Currently Occupied.");
        _;
    }

        // Check Price
    modifier costs(uint _amount){
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    // runs automatically on receiveing ether
    receive() external payable onlyWhileVacant costs(2 ether){
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

}