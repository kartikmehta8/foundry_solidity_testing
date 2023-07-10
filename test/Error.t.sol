// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import { Error } from "../src/Error.sol";

contract ErrorTest is Test {
    Error public error;

    function setUp() public {
        error = new Error();
    }

    function testFail() public {
        error.throwError();
    }

    function testRevert() public {
      vm.expectRevert();
        error.throwError();
    }

    function testRequireMessage() public {
      vm.expectRevert(bytes("Error message"));
        error.throwError();
    }

    function testCustomError() public {
      vm.expectRevert(Error.NotAuthorized.selector);
        error.throwCustomError();
    }
}