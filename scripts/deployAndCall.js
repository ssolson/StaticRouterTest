const hre = require("hardhat");

async function main() {
  // Deploy the Loaded Router
  const LoadedStaticRouter = await hre.ethers.getContractFactory(
    "LoadedStaticRouter"
  );
  const loadedStaticRouter = await LoadedStaticRouter.deploy();
  await loadedStaticRouter.deployed();

  // Get Address
  const LSR_address = loadedStaticRouter.address;
  console.log(`Deployed Router at: ${LSR_address}`);

  // Run a get
  const numba = await loadedStaticRouter.get();
  console.log(`Initial numba: ${numba}`);

  // Run a set
  await loadedStaticRouter.set(5);
  const numba1 = await loadedStaticRouter.get();

  console.log(`numba set to: ${numba1} `);

  // Attach The Big Module abi to the router
  const BigModule = await hre.ethers.getContractFactory("BigModule");
  const bigModule = await BigModule.attach(LSR_address);
  // Check the quote
  const quote = await bigModule.quote();
  console.log(quote);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
