// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.13;

import {ERC721} from "solmate/tokens/ERC721.sol";
import {Render} from "./libraries/Render.sol";

contract Bibos is ERC721 {
    address public owner;
    uint256 public totalSupply;

<<<<<<< HEAD
    mapping(uint256 => bytes32) public seed;
    error InvalidTokenId();
=======
    mapping(uint256 => bytes32) public data;
>>>>>>> main

    constructor() ERC721("Bibos", "BBO") {
        owner = msg.sender;
    }

<<<<<<< HEAD
    function tokenURI(uint256 _tokenId) public view override returns (string memory) {
        if (_tokenId >= totalSupply) revert InvalidTokenId();
        return Render.tokenURI(_tokenId, seed[_tokenId]);
    }

    function getSeed(uint256 _tokenId) public view returns (bytes32) {
        return seed[_tokenId];
    }

    function mint() external payable {
        uint256 id = totalSupply++;
        seed[id] = keccak256(abi.encodePacked(msg.sender, block.timestamp));
=======
    function tokenURI(uint256 id) public view override returns (string memory) {
        require(id < totalSupply, "invalid id");
        return Render.tokenURI(id, data[id]);
    }

    function mint() external payable {
        uint256 id = totalSupply++;

        // derive random data
        data[id] = keccak256(abi.encodePacked(msg.sender, block.timestamp));
        // mint token
>>>>>>> main
        _mint(msg.sender, id);
    }
}
