// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
    //favorite number is 0 if  
    uint256 MyfavoriteNumber;

    // uint256[] listoffavoriteNumber; //[0,1,2..]

    struct Person{
        uint256 favoriteNumber;
        string name;
    }   

    Person[] public listOfPeople;

    // Person public pat = Person({favoriteNumber: 7,name: "Pat"} );

    function store(uint256 _favoriteNumber) public {
        MyfavoriteNumber = _favoriteNumber;
    }   

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber,_name));
    }
}