// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Second {
  address private firstAddress;

  constructor(address _address) {
    firstAddress = _address;
  }

  function getFirstAddress() public view returns (address) {
    return firstAddress;
  }
}
