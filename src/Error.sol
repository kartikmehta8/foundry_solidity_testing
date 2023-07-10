// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Error {
  error NotAuthorized();

  function throwError() external {
    require(false, "Error message");
  }

  function throwCustomError() external {
    revert NotAuthorized();
  }
}