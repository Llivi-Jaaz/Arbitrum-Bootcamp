// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract StringSaver {
      string public data;

          function setData(string memory _data) public payable {
        data = _data;
    }
}