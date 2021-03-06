// SPDX-License-Identifier: MIT
pragma solidity 0.7.4;
import '@openzeppelin/contracts-3.4.2/token/ERC20/ERC20.sol';

/**
 * @dev This contract extends an ERC20 implementation, and mints 10,000,000,000 tokens to the deploying account. Used for testing purposes.
 */
contract Token is ERC20 {
    /**
     * @dev Constructor function minting 10 billion tokens to the owner. Do not use msg.sender for default owner as that will not work with CREATE2
     * @param owner Tokens are minted to the owner address
     */
    constructor(address owner) ERC20('TestToken', 'TEST') {
        _mint(owner, 10_000_000_000);
    }
}
