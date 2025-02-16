# Solidity Bug: Incorrect Balance Variable in Transfer Function

This repository demonstrates a common bug in Solidity smart contracts: using an incorrect variable name for accessing account balances.  The `transfer` function incorrectly accesses `balanceOf` which may be undefined, causing unexpected errors and potential vulnerabilities. This leads to incorrect balance updates and potential vulnerabilities, such as allowing users to transfer more tokens than they own.

The `bug.sol` file contains the buggy code. The `bugSolution.sol` file provides the corrected version.

## How to Reproduce

1. Compile `bug.sol` using a Solidity compiler.
2. Deploy the contract to a test network.
3. Attempt to transfer tokens; observe the erroneous behavior.

## Solution

The corrected code replaces the incorrect array `balanceOf`  with the correctly defined mapping `balances`. This ensures proper balance updates and prevents potential exploits.