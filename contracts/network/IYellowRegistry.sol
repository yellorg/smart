//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.4;

import '@openzeppelin/contracts/access/AccessControl.sol';

interface IYellowRegistry is IAccessControl {
  // *****************
  // Structs:
  // *****************

  struct ContractAndAddress {
    string _name;
    address _address;
  }

  // *****************
  // External methods:
  // *****************

  function addVersion(uint8 major, uint8 minor, uint8 patch) external;

  function removeVersion(uint8 major, uint8 minor, uint8 patch) external;

  function addContract(string calldata contractName) external;

  function removeContract(string calldata contractName) external;

  function addContractAtVersion(
    string calldata contractName,
    address contractAddress,
    uint8 major,
    uint8 minor,
    uint8 patch
  ) external;

  function editContractAtVersion(
    string calldata contractName,
    address changedAddress,
    uint8 major,
    uint8 minor,
    uint8 patch
  ) external;

  function removeContractAtVersion(
    string calldata contractName,
    uint8 major,
    uint8 minor,
    uint8 patch
  ) external;

  function latestVersion() external view returns (uint8 major, uint8 minor, uint8 patch);

  function getAllContractsAt(uint8 major, uint8 minor, uint8 patch) external view returns (ContractAndAddress[] memory);

  function getAllLatestContracts() external view returns (ContractAndAddress[] memory);

  function getContractAt(
    string calldata contractName,
    uint8 major,
    uint8 minor,
    uint8 patch
  ) external view returns (ContractAndAddress memory);

  function getLatestContract(
    string calldata contractName
  ) external view returns (ContractAndAddress memory);

  // *****************
  // Events:
  // *****************

  event VersionAdded(
    uint8 major,
    uint8 minor,
    uint8 patch
  );

  event VersionRemoved(
    uint8 major,
    uint8 minor,
    uint8 patch
  );

  event ContractNameAdded(string contractName);

  event ContractNameRemoved(string contractName);

  event ContractAtVersionAdded(
    string contractName,
    address contractAddress,
    uint8 major,
    uint8 minor,
    uint8 patch
  );

  event ContractAtVersionEdited(
    string contractName,
    address changedAddress,
    uint8 major,
    uint8 minor,
    uint8 patch
  );
  
  event ContractAtVersionRemoved(
    string contractName,
    uint8 major,
    uint8 minor,
    uint8 patch
  );
}
