# PUBGToken

PUBGToken is a Solidity smart contract that implements an ERC20 token with functionalities inspired by the popular battle royale game PlayerUnknown's Battlegrounds (PUBG). The token represents in-game assets, such as health kits and rewards, and allows players to interact with the game mechanics on the Ethereum blockchain.

## Features

### ERC20 Compliance

PUBGToken adheres to the ERC20 token standard, allowing it to be compatible with various Ethereum wallets, exchanges, and decentralized applications (dApps).

### Health Kits

Players can collect health kits using the `collectHealthKits` function, which increases their supply of health kits for in-game use.

### Shooting Enemies

The `shootEnemies` function enables players to engage in battles by shooting enemies. Players must have an adequate supply of health kits to participate in combat.

### Rewards

Players can receive rewards for their achievements in the game. The contract owner can issue rewards to players using the `issueRewards` function, and players can redeem their rewards with the `redeemRewards` function.

## Getting Started

To interact with the PUBGToken contract, you can deploy it to the Ethereum blockchain using tools like Remix or Truffle. Once deployed, players can utilize the contract's functions through Ethereum wallets or custom-built applications.

## Usage

### Deploying the Contract

Deploy the PUBGToken contract to the Ethereum blockchain with an initial supply of health kits and rewards.

### Interacting with the Contract

- **Collecting Health Kits**: Call the `collectHealthKits` function to increase your supply of health kits.
- **Shooting Enemies**: Engage in battles by calling the `shootEnemies` function and specifying the number of enemies shot.
- **Issuing Rewards**: As the contract owner, use the `issueRewards` function to distribute rewards to players.
- **Redeeming Rewards**: Players can redeem their rewards by calling the `redeemRewards` function.

## License

PUBGToken is licensed under the MIT License. See the `LICENSE` file for more information.
