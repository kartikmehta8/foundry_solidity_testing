// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "solmate/tokens/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20("Test Token", "TEST", 18) {
    constructor() {
        _mint(msg.sender, 1000000000000000000000000000);
    }
}

contract TestOz is Ownable {}