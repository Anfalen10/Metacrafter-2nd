## Gamma
This Solidity program is a basic token contract designed to introduce users to the fundamental syntax and functionality of the Solidity programming language. The main objective of this program is to serve as an entry point for beginners who want to learn how to create and manage their own tokens on the Ethereum blockchain.

### Description

This contract is a straightforward example written in Solidity, a language for developing smart contracts on the Ethereum network. The contract defines a token with a name, symbol, and total supply. It includes functions for minting new tokens and burning existing ones. This example is intended to provide a simple and clear introduction to Solidity programming and can act as a foundation for more complex projects in the future.

### Getting Started

#### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, visit the Remix website at [Remix Ethereum](https://remix.ethereum.org/).

1. Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., YourToken.sol). Copy and paste the following code into the file:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;

    contract YourToken {
        // Public variables here
        string public name = "GAMMA";
        string public symbol = "GAM";
        uint256 public supply = 0;

        // Mapping variable here
        mapping(address => uint256) public balances;

        // Mint function
        function mint(address to, uint256 value) public {
            supply += value;
            balances[to] += value;
        }

        // Burn function
        function burn(address from, uint256 value) public {
            require(balances[from] >= value, "Insufficient balance to burn");
            supply -= value;
            balances[from] -= value;
        }
    }
    ```

2. To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Ensure that the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile YourToken.sol" button.

3. After the code is compiled, you can deploy the contract by navigating to the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "YourToken" contract from the dropdown menu, and then click on the "Deploy" button.

4. Once the contract is deployed, you can interact with it by calling the `mint` and `burn` functions. Click on the "YourToken" contract in the left-hand sidebar, and use the input fields to call the desired function. For example, you can mint new tokens to an address or burn tokens from an address.

### Authors

Abhishek Verma
