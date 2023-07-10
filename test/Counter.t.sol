// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function testInitialCount() public {
        assertEq(counter.get(), 0);
    }

    function testInc() public {
        counter.inc();
        assertEq(counter.get(), 1);
    }

    function testIncDec() public {
        counter.inc();
        counter.dec();
        assertEq(counter.get(), 0);
    }
}
