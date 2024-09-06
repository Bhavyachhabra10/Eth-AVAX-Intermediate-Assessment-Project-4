## DegenToken Smart Contract
The DegenToken is an ERC20-compliant token with additional functionalities for minting, burning, transferring, and redeeming tokens. The contract is built using the Solidity programming language and leverages OpenZeppelin's library for standard ERC20 functionalities, ownership management, and burnable tokens.

## Features:
Mint Tokens: Only the owner can mint new tokens.
Check Balance: Users can check their token balance.
Transfer Tokens: Users can transfer tokens to another address.
Burn Tokens: Users can burn their tokens.
Redeem Tokens: Users can redeem tokens for in-game items, which involves burning the tokens and emitting an event.

## Prerequisites:
Remix IDE
Basic understanding of Solidity and smart contracts.
MetaMask for deploying on a testnet.

Steps:
1. Create the DegenToken contract, which sets up the "Degen" (DGN) token and assigns the contract owner.
2. The owner calls mintTokens to mint tokens for the smart contract.
3. User can override the decimal functions.
4. User can check the balance of sender.
5. User can transfer tokens to another address.
6. User can burn the tokens which are not needed.
7. Users can redeeming tokens for in game items.
8. User can emit the events when tokens are not needed.

## Author: 
Bhavya Chhabra

## Licence    
[MIT License](./LICENSE)
