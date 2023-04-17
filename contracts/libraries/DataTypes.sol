// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

library DataTypes {
    struct Order {
        address owner;
        address nftAddress;
        uint256 tokenId;
        address payToken;
        uint256 price;
        uint256 deadline;
    }

    struct Royalty {
        address receiver;
        uint256 percentage; // multiply by 100
    }

    // note struct for web3Entry
    struct Note {
        bytes32 linkItemType;
        bytes32 linkKey;
        string contentUri;
        address linkModule;
        address mintModule;
        address mintNFT;
        bool deleted;
        bool locked;
    }
}
