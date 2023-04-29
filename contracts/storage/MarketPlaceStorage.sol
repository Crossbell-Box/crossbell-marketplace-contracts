// SPDX-License-Identifier: MIT
// slither-disable-start naming-convention
pragma solidity 0.8.18;

import {DataTypes} from "../libraries/DataTypes.sol";

contract MarketPlaceStorage {
    address internal _wcsb;
    address internal _mira;

    uint256 internal _askOrderCount;
    //  @notice askOrderId -> Order
    mapping(uint256 => DataTypes.Order) internal _askOrders;
    //  @notice nftAddress -> tokenId -> owner -> askOrderId
    mapping(address => mapping(uint256 => mapping(address => uint256))) internal _askOrderIds;

    uint256 internal _bidOrderCount;
    //  @notice bidOrderId -> Order
    mapping(uint256 => DataTypes.Order) internal _bidOrders;
    //  @notice nftAddress -> tokenId -> owner -> Order
    mapping(address => mapping(uint256 => mapping(address => uint256))) internal _bidOrderIds;
}
// slither-disable-end naming-convention
