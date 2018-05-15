pragma solidity ^0.4.18;

import "./Base_Interface.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title WTIndex_Interface
 * @dev Interface of WTIndex contract, inherits from OpenZeppelin's Ownable and
 * from WT's 'Base_Interface'.
 */
contract WTIndex_Interface is Base_Interface {
  address[] public hotels;
  mapping(address => uint) public hotelsIndex;
  mapping(address => address[]) public hotelsByManager;
  mapping(address => uint) public hotelsByManagerIndex;
  address public LifToken;

  function registerHotel(string url) external;
  function deleteHotel(address hotel) external;
  function callHotel(address hotel, bytes data) external;
  function getHotelsLength() constant public returns (uint);
  function getHotels() constant public returns (address[]);
  function getHotelsByManager(address manager) constant public returns (address[]);

  event HotelRegistered(address hotel, uint managerIndex, uint allIndex);
  event HotelDeleted(address hotel, uint managerIndex, uint allIndex);
  event HotelCalled(address hotel);
}