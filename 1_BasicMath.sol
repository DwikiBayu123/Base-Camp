// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicMath {

    // Adder function
    function adder(uint _a, uint _b) public pure returns (uint sum, bool error) {
        // Safe addition with overflow check
        unchecked {
            sum = _a + _b;
            if(sum < _a) { // if overflow occurred
                return (0, true);
            }
        }
        return (sum, false); // no overflow
    }

    // Subtractor function
    function subtractor(uint _a, uint _b) public pure returns (uint difference, bool error) {
        // Safe subtraction with underflow check
        if (_a < _b) {
            return (0, true); // underflow occurred
        } else {
            difference = _a - _b;
            return (difference, false); // no underflow
        }
    }
}