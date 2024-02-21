# PUBGToken ERC20 Token

PUBGToken is an ERC20 token contract designed for a PUBG-themed gaming environment. Players can earn tokens by shooting enemies, redeem their tokens for rewards, check their token balances, transfer tokens to others, mint new tokens, and burn tokens.

## Functionality

The PUBGToken contract includes the following functionality:

### 1. Mint Tokens

- **Function**: `mint(address account, uint256 amount)`
- **Description**: Allows the owner to mint new tokens and distribute them to specified accounts.
- **Access**: Only the contract owner can call this function.

### 2. Burn Tokens

- **Function**: `burn(uint256 amount)`
- **Description**: Enables the owner to burn tokens from their own balance.
- **Access**: Only the contract owner can call this function.

### 3. Shoot Enemies

- **Function**: `shootEnemies()`
- **Description**: Allows players to increase their kill count by shooting enemies.
- **Access**: Any player can call this function.

### 4. Redeem Tokens

- **Function**: `redeemTokens(uint256 amount)`
- **Description**: Enables players to redeem their tokens for rewards.
- **Access**: Players must have at least one kill to be eligible for redemption. The contract checks the player's balance and burns the specified amount of tokens.

### 5. Check Balance

- **Function**: `checkBalance(address account) returns (uint256)`
- **Description**: Allows players to check their token balances.
- **Access**: Any player can call this function.

### 6. Transfer Tokens

- **Function**: `transferTokens(address recipient, uint256 amount)`
- **Description**: Enables players to transfer tokens to others.
- **Access**: Players must have sufficient balance. Any player can call this function.

## Events

The PUBGToken contract does not emit any events.

## Deployment

The contract is deployed with the name "PUBGToken" and the symbol "PUBG". It is initialized with an initial supply of 1,000,000 tokens.

## License

This contract is licensed under the MIT License.
