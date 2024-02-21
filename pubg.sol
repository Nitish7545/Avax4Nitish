// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGaming is Ownable {
    ERC20 public token;

    mapping(address => uint256) public killCount;
    mapping(address => bool) public rewardsRedeemed;

    event PlayerKilled(address indexed player, uint256 enemies);
    event RewardsIssued(address indexed player, uint256 rewards);
    event RewardsRedeemed(address indexed player);

    constructor(address _tokenAddress) {
        token = ERC20(_tokenAddress);
    }

    function shootEnemies(uint256 enemies) public {
        require(enemies > 0, "Number of enemies shot must be greater than 0");
        token.transferFrom(msg.sender, address(this), enemies);
        killCount[msg.sender] += enemies;
        emit PlayerKilled(msg.sender, enemies);
    }

    function issueRewards(address player, uint256 rewards) public onlyOwner {
        rewardsRedeemed[player] = false;
        token.transfer(player, rewards);
        emit RewardsIssued(player, rewards);
    }

    function redeemRewards() public {
        require(!rewardsRedeemed[msg.sender], "Rewards already redeemed");
        rewardsRedeemed[msg.sender] = true;
        emit RewardsRedeemed(msg.sender);
    }
}
