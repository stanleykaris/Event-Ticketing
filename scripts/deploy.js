import { ethers } from "hardhat";

async function main() {
    // Get the contract factory
    const Ticket = await ethers.getContractFactory("Ticket");

    // Deploy the contract
    const ticket = await Ticket.deploy();
    await ticket.deployed();

    console.log("Ticket contract deployed to:", ticket.address);

    // Optional: Verify the contract on Etherscan
    // await for few block confirmations to confirm deployment
    await ticket.deployTransaction.wait(6);

    // Print deployment information
    console.log("Deployment Info:");
    console.log("Contract Address:", ticket.address);
    console.log("Deployer Address:", ticket.deployTransaction.hash);
}

// Execute deployment
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });