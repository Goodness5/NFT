import { ethers } from "hardhat";

async function main() {
    const superman = await ethers.getContractFactory("NFT");
    const Superman = await superman.deploy();
    await Superman.deployed()
    const txReceipt = await ethers.provider.waitForTransaction(txHash);
    console.log(“Contract deployed to address:”,  txReceipt.contractAddress);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
