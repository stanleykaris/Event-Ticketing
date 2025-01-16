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

    mapping(uint256 => Occassion) occasions;
    mapping(uint256 => mapping(address => bool)) public hasBought;
    mapping(uint256 => mapping(uint256 => address)) public seatTaken;
    mapping(uint256 => uint256[]) seatsTaken;
    /**
 * @notice Restricts function access to only the contract owner
 * @dev Throws if called by any account other than the owner
 */
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }
    /// @notice Creates a new event occasion with specified details
/// @param _name Name of the event
/// @param _cost Cost per ticket in wei
/// @param _maxTickets Maximum number of tickets available
/// @param _date Date of the event
/// @param _time Time of the event
/// @param _location Location where event will be held
/// @dev Only callable by contract owner
   function list(
    string memory _name,
    uint256 _cost,
    uint256 _maxTickets,
    string memory _date,
    string memory _time,
    string memory _location
   ) public onlyOwner {
    totalOccassions++;
    occasions[totalOccassions] = Occassion(
        totalOccassions,
        _name,
        _cost,
        0, // initial tickets value
        _maxTickets,
        _date,
        _time,
        _location
    );
}
/// @notice Mints a new ticket NFT for a specific occasion and seat
/// @param _id The ID of the occasion to mint a ticket for
/// @param _seat The seat number to assign to the ticket
/// @dev Requires sufficient ETH payment, valid occasion ID, and available seat
/// @dev Updates occasion tickets count, seat assignments and total supply
 function mint(uint256 _id, uint256 _seat) public payable {
    // Checking that id is not 0 or less than total occassions...
    require(_id != 0, "Occasion ID must be greater than 0");
    require(_id <= totalOccassions, "Occasion ID exceeds total occasions");

    // Require that ETH sent is greater than cost...
    require(msg.value >= occasions[_id].cost, "Insufficient ETH sent for the occasion");

    // Require that the seat is not taken, and the seats exists...
    require(_seat < occasions[_id].maxTickets, "Seat number exceeds max tickets");
    require(seatTaken[_id][_seat] == address(0), "Seat is already taken");

    occasions[_id].tickets -= 1; //Updating ticket count
    hasBought[_id][msg.sender] = true; // Update buying status
    seatTaken[_id][_seat] = msg.sender; // Assigning seat
    seatsTaken[_id].push(_seat); // Update seats currently taken
    totalSupply++;

    _safeMint(msg.sender, totalSupply);
 }
/// @notice Allows the owner to withdraw all ETH from the contract
/// @dev Uses low-level call to transfer ETH balance to owner
/// @custom:security Non-reentrant by default since state changes happen before transfer
 function withdraw() public onlyOwner {
    (bool success,) = owner.call{value: address(this).balance}("");
    require(success);
 }
}