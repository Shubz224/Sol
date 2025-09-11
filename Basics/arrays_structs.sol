// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    //store bunch of people and fav numbers

    struct People {
        uint256 favNum;
        string name;
    }

    //Solidity makes indexing start from '0' for everything we define for better tracking and performance
    People public person = People({favNum: 24, name: "Shubham"}); //Output 0:uint256: favNum 24  , 1:string: name Shubham

    //but this is not the optimal way tostore the list here

    //if we want to give size People[3]; which defines the size of an aray
    //we could use array for this

    //dynamic array
    People[] public peopleArray;

    //function to add people inarray

    //callData, memory,storage //:- variables that can be modified
    //we added memory to string cause , strings are complicated under the  hood string itself is an array if each latter
    //But we dont need memory define to _favouriteNumber as array knows its memory by default :(Special type)
    function addPersonToarray(
        string memory _name,
        uint256 _favouriteNumber
    ) public {
        People memory newPerson = People(_favouriteNumber, _name);
        peopleArray.push(newPerson);
    }

    uint256 public favNum;

    function store(uint256 _FavNum) public {
        favNum = _FavNum;
    }

    function seeFavNum() public view returns (uint256) {
        return favNum;
    }
}
