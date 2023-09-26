// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";

contract Database is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("database", "DB") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
