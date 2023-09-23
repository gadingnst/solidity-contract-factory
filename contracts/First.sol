// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract First {
  address private secondAddress;

  constructor() {}

  function setSecondAddress(address _address) external {
    secondAddress = _address;
  }

  function getSecondAddress() public view returns (address) {
    return secondAddress;
  }
}
