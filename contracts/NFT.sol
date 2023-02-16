// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {IERC721} from "./INFT.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * requirements:
 * name
 * symbol
 * id
 */


contract MyNFT is ERC721 {
    constructor(string memory name, string memory symbol)
ERC721(name, symbol){


}
}

    // string public  name;
    // string public  symbol;

    // uint256 Id;

    // struct holderdetails {
    //     uint id;
    //     address holder;
    //     uint256 balance;
    //     address[] approved;
    //     mapping (uint256 => address) amountapproved;
    // }

    // mapping (address => holderdetails)  tokenholder;
    // mapping (uint256 => address) _tokenOwner;
    // mapping (uint256 => address) _tokenOwner;

    // mapping (address => mapping(uint256 => bool)) approval;


    constructor (string memory _name, string memory _symbol) {
      
      name =_name;
      symbol = _symbol;
    }


//     // Implement the required functions from the interface here
//     function balanceOf(address owner) external view  returns (uint256 balance) {
//             require(owner != address(0), "address zero not valid");
//             balance = tokenholder[owner].balance;

        
//     }

//     function ownerOf(uint256 tokenId) external view returns (address owner) {
//     owner = _tokenOwner[tokenId];
// }

//     function transferFrom(address from, address to, uint256 tokenId) external  {
//         // require();
//     }

//     function approve(address approved, uint256 tokenId) external  {
        

//     }

//     function getApproved(uint256 tokenId) external view  returns (address approved) {
        
//     }

//     function setApprovalForAll(address operator, bool _approved) external  {
//         // ...
//     }

//     function isApprovedForAll(address owner, address operator) external view  returns (bool) {
//         // ...
//     }
}
