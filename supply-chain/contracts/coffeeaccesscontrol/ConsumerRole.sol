pragma solidity ^0.8.6;

// Import the library 'Roles'
import "./Roles.sol";

// Contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {
  using Roles for Roles.Role;

  event ConsumerAdded(address indexed account);
  event ConsumerRemoved(address indexed account);

  Roles.Role private consumers;

  constructor() public {
    _addConsumer(msg.sender);
  }

  modifier onlyConsumer() {
    require(isConsumer(msg.sender) == true);
    _;
  }

  function isConsumer(address account) public view returns (bool) {
    return consumers.has(account);
  }

  function addConsumer(address account) public onlyConsumer {
    _addConsumer(account);
  }

  function renounceConsumer() public onlyConsumer{
    _removeConsumer(msg.sender);
  }

  function _addConsumer(address account) internal {
    consumers.add(account);
    emit ConsumerAdded(account);
  }

  function _removeConsumer(address account) internal {
    consumers.remove(account);
    emit ConsumerRemoved(account);
  }
}