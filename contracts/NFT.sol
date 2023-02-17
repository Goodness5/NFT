// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Supes is ERC721{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    using Strings for uint256;
    
    mapping(uint256 => string) private _tokenURIs;

    // Base URI
    string private _baseURIextended;
    address private owner;

   
    constructor() ERC721("GOODNESS", "KG") {
        owner = msg.sender;
    }
     modifier onlyowner {
        require(msg.sender == owner, "onlyowner can perform this function");

        _;
    }

    function setBaseURI(string memory baseURI_) external onlyowner {
        _baseURIextended = baseURI_;
        
    }

    function _setTokenURI(uint256 tokenId, string memory _tokenURI)internal virtual{
        require(_exists(tokenId),"ERC721Metadata: URI set of nonexistent token");
        _tokenURIs[tokenId] = _tokenURI;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return _baseURIextended;
    }

    function tokenURI(uint256 tokenId)public view virtual override returns (string memory){
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        string memory _tokenURI = _tokenURIs[tokenId];
        string memory base = _baseURI();

        // If there is no base URI, return the token URI.
        if (bytes(base).length == 0) {
            return _tokenURI;
        }
        // If both are set, concatenate the baseURI and tokenURI (via abi.encodePacked).
        if (bytes(_tokenURI).length > 0) {
            return string(abi.encodePacked(base, _tokenURI));
        }
        // If there is a baseURI but no tokenURI, concatenate the tokenID to the baseURI.
        return string(abi.encodePacked(base, tokenId.toString()));
    }

    function mintNFT(address recipient, string memory _tokenURI) public onlyowner returns (uint256){
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, _tokenURI);
        return newItemId;
    }
}
