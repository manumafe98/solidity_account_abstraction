// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IAccount} from "@eth-infinitism/contracts/interfaces/IAccount.sol";
import {PackedUserOperation} from "@eth-infinitism/contracts/interfaces/PackedUserOperation.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {SIG_VALIDATION_FAILED, SIG_VALIDATION_SUCCESS} from "@eth-infinitism/contracts/core/Helpers.sol";
import {IEntryPoint} from "@eth-infinitism/contracts/interfaces/IEntryPoint.sol";

// Make PackedUSerOPeration
// modifier to check that only entrypoint can communicate with the function
// modifier to check that entrypoint and user can trigger the function
// Validate signature
// make payment -> to alt-mempools without paymaster
// Execute transaction
// Create a dummy contract to add +1 to a counter that is going to be targeted as the final transaction
contract MinimalAccountAbstraction is IAccount, Ownable {

    // struct PackedUserOperation {
    //     address sender;
    //     uint256 nonce;
    //     bytes initCode;
    //     bytes callData;
    //     bytes32 accountGasLimits;
    //     uint256 preVerificationGas;
    //     bytes32 gasFees;
    //     bytes paymasterAndData;
    //     bytes signature;
    //}

    constructor() Ownable(msg.sender) {}

    function validateUserOp(PackedUserOperation calldata userOp, bytes32 userOpHash, uint256 missingAccountFunds)
        external
        returns (uint256 validationData)
    {

    }
}
