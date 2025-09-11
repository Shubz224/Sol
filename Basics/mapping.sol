// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    struct People {
        uint256 favNum;
        string name;
    }

    People[] public peopleArray;

    //string name is mapped to favNumbers , if we search with name we get their favourite number  here 
    
    mapping (string => uint256) public nameTOfavNumberMap;

    function addPersonToarray(
        string memory _name,
        uint256 _favouriteNumber
    ) public {
        People memory newPerson = People(_favouriteNumber, _name);
        peopleArray.push(newPerson);
        nameTOfavNumberMap[_name]=_favouriteNumber;
    }

    uint256 public favNum;

    function store(uint256 _FavNum) public {
        favNum = _FavNum;
    }

    function seeFavNum() public view returns (uint256) {
        return favNum;
    }
}
