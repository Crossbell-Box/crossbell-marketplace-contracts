#!/usr/bin/env bash

set -x

# To load the variables in the .env file
source .env

# To deploy and verify our contract
forge script script/MarketPlace.s.sol:MarketPlaceScript --rpc-url $RINKEBY_RPC_URL  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_KEY -vvvv
