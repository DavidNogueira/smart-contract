pragma solidity ^0.4.11;

import "./StandardToken.sol";
import "./Ownable.sol";


/**
 *  Substratum token contract. Implements
 */
contract Substratum is StandardToken, Ownable {
  string public constant name = "Substratum";
  string public constant symbol = "SUB";
  uint public constant decimals = 2;


  // Constructor
  function Substratum() {
      totalSupply = 1200000000000000;
      balances[msg.sender] = totalSupply; // Send all tokens to owner
  }

  /**
   *  Burn away the specified amount of SkinCoin tokens
   */
  function burn(uint _value) onlyOwner returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_value);
    totalSupply = totalSupply.sub(_value);
    Transfer(msg.sender, 0x0, _value);
    return true;
  }

}






