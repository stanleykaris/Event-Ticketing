// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Ticket is ERC721 {
    address public owner;
    uint256 public totalOccassions;
    uint256 public totalSupply;

    struct Occassion {
        uint256 id;
        string name;
        uint256 cost;
        uint256 tickets;
        uint256 maxTickets;
        string date;
        string time;
        string location;
    }


    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
    }
   
}