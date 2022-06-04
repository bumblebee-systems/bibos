// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {Test, console2 as console} from "forge-std/Test.sol";

import {Bibos} from "../Bibos.sol";

import {time} from "src/util/time.sol";

contract local_render is Test {
    function run() external returns (string memory tokenURI) {
        vm.startPrank(0xa0Ee7A142d267C1f36714E4a8F75612F20a79720);

        Bibos bibos = new Bibos();

        // get current time to use as random seed
        uint256 unixTime = time.getUnixTime();
        // set block.timestamp
        vm.warp(unixTime);

        // compute a random tokenId
        uint256 tokenId = unixTime % 999;

        // set the total supply
        // (in storage slot 7)
        vm.store(address(bibos), bytes32(uint256(7)), bytes32(tokenId));

        // mint
        bibos.mint();
        tokenURI = bibos.tokenURI(tokenId);
    }
}