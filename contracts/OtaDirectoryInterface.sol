pragma solidity ^0.5.6;

import "./SegmentDirectoryEvents.sol";

/**
 * Interface of Ota Directory. Usable in libraries.
 */
contract OtaDirectoryInterface is SegmentDirectoryEvents {
    function createOta(string calldata dataUri) external returns (address);
    function createAndAddOta(string calldata dataUri) external returns (address);
    function addOta(address ota) external returns (address);
    function removeOta(address ota) external;
    function getOtasLength() public view returns (uint);
    function getOtas() public view returns (address[] memory);
    function otasIndex(address ota) public view returns (uint);
    function otas(uint index) public view returns (address);
}
