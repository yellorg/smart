//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.4;

import '@openzeppelin/contracts/access/AccessControl.sol';
import './IYellowRegistry.sol';

contract YellowRegistry is IYellowRegistry, AccessControl {
  constructor() {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }
}
