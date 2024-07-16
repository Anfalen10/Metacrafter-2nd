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