import { Signer } from "ethers";
import { ethers } from "hardhat";

async function main() {
    const superman = await ethers.getContractFactory("NFT");
    const [owner, addr1, addr2] = await ethers.getSigners();
    
    const Superman = await superman.deploy();
    await Superman.deployed()
    const supes = Superman.address;
    console.log(`Contract deployed to address:,  ${supes}`);

    await Superman.connect(owner).safeMint(owner.address, "QmUXpwZazx5q53KbvwnuLW9q23nauBX2BrBHg7YRRdFf6j")
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
