// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PUBGToken is ERC20, Ownable {
    mapping(address => uint256) public killCount;

    constructor() ERC20("PUBGToken", "PUBG") {
        _mint(msg.sender, 1000000 * 10 ** uint(decimals()));
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(uint256 amount) public onlyOwner {
        _burn(msg.sender, amount);
    }

    function shootEnemies() public {
        killCount[msg.sender]++;
    }

    function redeemTokens(uint256 amount) public {
        require(killCount[msg.sender] >= 1, "Must have at least one kill to redeem");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function transferTokens(address recipient, uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(msg.sender, recipient, amount);
    }
}
