// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


// Import the library 'Roles'
import "./Roles.sol";

// ✅ Define a contract 'DistributorRole' to manage this role - add, remove, check
contract DistributorRole {
    using Roles for Roles.Role;

    // ✅ Define 4 events, one for Adding, and other for Removing
    event DistributorAdded(address indexed account);
    event DistributorNotAdded(address indexed account);
    event DistributorRemoved(address indexed account);
    event DistributorNotRemoved(address indexed account);

    // ✅ Define a struct 'distributors' by inheriting from 'Roles' library, struct Role
    Roles.Role private distributors;

    // ✅ In the constructor make the address that deploys this contract the 1st distributor
    constructor() {
        _addDistributor(msg.sender);
    }

    // ✅ Define a modifier that checks to see if msg.sender has the appropriate role
    modifier onlyDistributor() {
        require(isDistributor(msg.sender));
        _;
    }

    // ✅ Define a function 'isDistributor' to check this role
    function isDistributor(address account) public view returns (bool) {
        return distributors.has(account);
    }

    // ✅ Define a function 'addDistributor' that adds this role
    function addDistributor(address account) onlyDistributor public {
        _addDistributor(account);
    }

    // ✅ Define a function 'renounceDistributor' to renounce this role
    function renounceDistributor() onlyDistributor public {
        _removeDistributor(msg.sender);
    }

    // ✅ Define an internal function '_addDistributor' to add this role, called by 'addDistributor'
    function _addDistributor(address account) internal {
        if (distributors.has(account) == false) {
            distributors.add(account);
            emit DistributorAdded(account);
        } else {
            emit DistributorNotAdded(account);
        }

    }

    // ✅ Define an internal function '_removeDistributor' to remove this role, called by 'removeDistributor'
    function _removeDistributor(address account) internal {
        if (distributors.has(account)) {
            distributors.remove(account);
            emit DistributorRemoved(account);
        } else {
            emit DistributorNotRemoved(account);
        }
    }
}