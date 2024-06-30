// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    // Here I have to Mint new tokens and only the owner can call this function
    function mintTokens(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Now I have to Override the decimals function to return 0
    function decimals() override public pure returns (uint8) {
        return 0;
    }

    // Then I can Check the balance of the sender
    function checkBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // After this I have to Transfer tokens to another address
    function sendTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance of Degen Tokens");
        transfer(_receiver, _value);
    }

    // Now I have to Burn tokens that are no longer needed
    function destroyTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance of Degen Tokens");
        burn(_value);
    }

    // Then Redeeming tokens for in-game items
    function redeemForItems(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance of Degen Tokens");
        burn(_value);
        emit TokensRedeemed(msg.sender, _value);
    }

    // After this, Event emitted when tokens are redeemed
    event TokensRedeemed(address indexed from, uint256 value);
}
