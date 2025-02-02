// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


// Import the library 'Roles'
import "./Roles.sol";

// ✅ Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {
    // Using: We add for the type "Roles.Role" the functionality defined in the Roles library
    // i.e. we add the functions add, remove, has to any object of type Roles.Role
    using Roles for Roles.Role;

    // ✅ Define 4 events, one for Adding, and other for Removing
    event ConsumerAdded(address indexed account);
    event ConsumerNotAdded(address indexed account);
    event ConsumerRemoved(address indexed account);
    event ConsumerNotRemoved(address indexed account);

    // ✅ Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
    Roles.Role private consumers;

    // ✅ In the constructor make the address that deploys this contract the 1st consumer
    constructor() {
        _addConsumer(msg.sender);
    }

    // ✅ Define a modifier that checks to see if msg.sender has the appropriate role
    modifier onlyConsumer() {
        require(isConsumer(msg.sender));
        _;
    }

    // ✅ Define a function 'isConsumer' to check this role
    function isConsumer(address account) public view returns (bool) {
        return consumers.has(account);
    }

    // ✅ Define a function 'addConsumer' that adds this role
    function addConsumer(address account) public onlyConsumer {
        _addConsumer(account);
    }

    // ✅ Define a function 'renounceConsumer' to renounce this role
    function renounceConsumer() onlyConsumer public {
        _removeConsumer(msg.sender);
    }

    // ✅ Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
    function _addConsumer(address account) internal {
        if (consumers.has(account) == false) {
            consumers.add(account);
            emit ConsumerAdded(account);
        } else {
            emit ConsumerNotAdded(account);
        }
    }

    // ✅ Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
    function _removeConsumer(address account) internal {
        if (consumers.has(account)) {
            consumers.remove(account);
            emit ConsumerRemoved(msg.sender);
        } else {
            emit ConsumerNotRemoved(msg.sender);
        }
    }
}