// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PUBGToken is ERC20("PUBGToken", "PUBG"), Ownable {
    uint256 public healthKits = 10;
    mapping(address => uint256) public killCount;
    mapping(address => bool) public rewardsRedeemed;

    constructor() Ownable(msg.sender) { // Pass msg.sender to Ownable constructor
        _mint(msg.sender, healthKits);
    }

    function collectHealthKits(uint256 kits) public {
        _mint(msg.sender, kits);
        healthKits += kits;
    }

    function shootEnemies(uint256 enemies) public {
        require(healthKits > 0, "Not enough health kits");
        require(enemies > 0, "Number of enemies shot must be greater than 0");

        healthKits -= enemies;
        killCount[msg.sender] += enemies;
    }

    function issueRewards(address addr, uint256 rewards) public onlyOwner {
        rewardsRedeemed[addr] = false;
        _mint(addr, rewards);
    }

    function redeemRewards() public {
        require(!rewardsRedeemed[msg.sender], "Rewards already redeemed");
        rewardsRedeemed[msg.sender] = true;
    }
}
