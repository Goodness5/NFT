// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {IERC721} from "./INFT.sol";

/**
 * requirements:
 * name
 * symbol
 * id
 */

contract NFT{

    string public  name;
    string public  symbol;

    uint256 Id;
    mapping (address => uint256)  tokenholder;

    // struct holderdetails {
    //     uint id;

    // }


    constructor (string memory _name, string memory _symbol) {
      
      name =_name;
      symbol = _symbol;
    }


    // Implement the required functions from the interface here
    function balanceOf(address owner) external view  returns (uint256 balance) {
            require(owner != address(0), "address zero not valid");
            balance = tokenholder[owner];

        
    }

    function ownerOf(uint256 tokenId) external view  returns (address owner) {
        
    }

    function transferFrom(address from, address to, uint256 tokenId) external  {
        // ...
    }

    function approve(address approved, uint256 tokenId) external  {
        // ...
    }

    function getApproved(uint256 tokenId) external view  returns (address approved) {
        // ...
    }

    function setApprovalForAll(address operator, bool _approved) external  {
        // ...
    }

    function isApprovedForAll(address owner, address operator) external view  returns (bool) {
        // ...
    }
}
