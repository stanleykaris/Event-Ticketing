# 🎟Event Ticketing Platform

This project provides a decentralized, secure, and scalable event ticketing solution built with modern web and blockchain technologies. Users can create, manage, and purchase event tickets using smart contracts connected to the Avalanche blockchain.

## Features

Decentralized Ticketing: Utilizes Avalanche blockchain for secure and transparent ticket transactions.

Frontend: Built with React.

Smart Contracts: Manage event tickets, ownership, and transactions on-chain.


## Libraries/Frameworks/Modules

### Frontend

React.js

Tailwind CSS :  styling components.

### Blockchain

Avalanche: For deploying and executing smart contracts.

Solidity: Language used for writing smart contracts.

OpenZeppelin for Solidity Libraries


### Development Tools
Hardhat

### Wallet Integration
MetaMask or WalletConnect


## 🧑‍💻 Getting Started

### Prerequisites

Node.js 

Avalanche C-Chain Testnet or Mainnet

MetaMask Wallet Extension

Hardhat installed globally

npm install --save-dev hardhat


## 📁 Project Structure
.
├── client/                 # React Frontend
│   ├── src/                # React Source Files
│   │   ├── components/     # Reusable UI Components
│   │   ├── pages/          # Application Pages (Home, Events, Profile)
│   │   ├── utils/          # Helper Functions
│   │   └── App.js          # Main Application File
│   └── public/             # Static Assets
├── contracts/              # Smart Contracts (Solidity)
│   ├── Ticketing.sol       # Core Smart Contract
├── scripts/                # Hardhat Scripts (Deployment, Interactions)
├── test/                   # Smart Contract Tests
├── hardhat.config.js       # Hardhat Configuration
├── README.md               # Project Documentation
├── package.json            # Node.js Dependencies
└── .env                    # Environment Variables


### Set up environment variables: Create a .env file in the root directory with the following variables:

AVALANCHE_RPC_URL=<Avalanche RPC URL>
PRIVATE_KEY=<Your Wallet Private Key>

Replace <Avalanche RPC URL> with the RPC URL of the Avalanche network (Testnet or Mainnet) and <Your Wallet Private Key> with your wallet's private key.

### Compile Smart Contracts:

npx hardhat compile

### Deploy Contracts:

npx hardhat run scripts/deploy.js --network avalancheFuji

### Start the React Application:

npm start



## 📝 Smart Contract Overview

Ticket.sol
lock.sol

A Solidity contract to manage event tickets:

createEvent: Organizers create new events and allocate tickets.

buyTicket: Users can purchase tickets using AVAX.

transferTicket: Tickets can be securely transferred between users.


## Avalanche Network Configuration

Add Avalanche C-Chain Testnet to MetaMask:

Network Name: Avalanche FUJI Testnet

New RPC URL: https://api.avax-test.network/ext/bc/C/rpc

Chain ID: 43113

Currency Symbol: AVAX

Block Explorer URL: https://testnet.snowtrace.io



## 🔧 Testing

Run smart contract tests:

npx hardhat test

Test the front end locally using:

npm run test


