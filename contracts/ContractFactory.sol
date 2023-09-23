// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "./First.sol";
import "./Second.sol";


contract ContractFactory {
  address private firstAddress;
  address private secondAddress;

  function createContracts() public {
    First f = new First();
    firstAddress = address(f);

    Second s = new Second(firstAddress);
    secondAddress = address(s);

    f.setSecondAddress(secondAddress);
  }

  function getContractAddresses() public view returns (address, address) {
    return (firstAddress, secondAddress);
  }
}
