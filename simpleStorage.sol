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

    function store(uint256 _FavNum) public {
        favNum = _FavNum;
    }

    function seeFavNum() public view returns (uint256) {
        return favNum;
    }
}
