# PUBG Contract

The PUBG contract is a simple game contract built on the Ethereum blockchain where players can shoot enemies, earn rewards, and redeem them using a specified ERC20 token.

## Features

- Players can shoot enemies and earn rewards.
- Rewards can be issued by the contract owner.
- Players can redeem their rewards for in-game items.

## Getting Started

To interact with the PUBG contract, you need an Ethereum wallet and some Ether (ETH) to cover transaction fees.

### Prerequisites

- An Ethereum wallet (e.g., MetaMask).
- Some Ether (ETH) to cover transaction fees.

### Installation

No installation is required for interacting with the contract. You can interact with it directly using tools like Remix, Hardhat, or Truffle.

### Contract Deployment

1. Deploy the ERC20 token contract that will be used as in-game currency.
2. Deploy the PUBG contract, passing the address of the deployed ERC20 token contract.

## Usage

### Shooting Enemies

Players can shoot enemies by calling the `shootEnemies` function, specifying the number of enemies they want to shoot.

### Issuing Rewards

The contract owner can issue rewards to players using the `issueRewards` function, specifying the player's address and the amount of rewards.

### Redeeming Rewards

Players can redeem their rewards for in-game items by calling the `redeemRewards` function.

## Example Usage

```solidity
// Deploy PUBG contract, passing the address of the deployed ERC20 token contract
PUBG game = new PUBG(tokenAddress);

// Player shoots enemies
game.shootEnemies(10);

// Owner issues rewards to a player
game.issueRewards(playerAddress, 100);

// Player redeems rewards
game.redeemRewards();
```

## Contributing

Contributions are welcome! If you have suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
