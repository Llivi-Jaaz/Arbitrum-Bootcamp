// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("MyERC721Token", "MET") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreieas6rydz3h357ls4ssbkcdfqxqtx57n7ukgobtycqa5bwtxa6ldu"
        );
        tokenId++;
    }
}