// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    //boolean,unit,int,address,bytes
    // bool hasFavouriteNumber = false;
    // uint256 favNum = 123;
    //  string favNumberIntext = "one hundred and tenty three";
    //address myAddress = 0x646BA75A38912A65907a34856db1c2c4bf423492;
    //  bytes32 favourieBytes = "cat";

    //this gets initialized to zero
    uint256 public favNum;

    //this fucntion will cost gas as it is changing state of blockchain
    function store(uint256 _FavNum) public {
        favNum = _FavNum;
    }

    // view and Pure function wont cost any gas to execute
    //we cant read and write any thing from blochain with these functions
    function seeFavNum() public view returns (uint256) {
        return favNum;
    }

    //if we want to use something again and again just for eg: calculation then we use pure function

    function add(uint256) public pure returns (uint256) {
        return (2 + 5 * 20);
    }












    
}
