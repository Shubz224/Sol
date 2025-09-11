import hardhat from 'hardhat';
const { ethers } = hardhat;

async function main() {
  // Compile contract and prepare deployment
  const SimpleStorageFactory = await ethers.getContractFactory("SimpleStorage");
  console.log("Deploying contracts...");

  // Deploy contract
  const simpleStorage = await SimpleStorageFactory.deploy();
  
  // Log contract address
  console.log(`Deployed contracts to: ${simpleStorage.address}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
