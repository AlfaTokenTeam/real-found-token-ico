pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract RealFoundToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function RealFoundToken(address _owner)  UpgradeableToken(_owner) {
    name = "RealFoundToken";
    symbol = "REF";
    totalSupply = 5000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}