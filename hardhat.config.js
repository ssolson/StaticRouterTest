require("@nomiclabs/hardhat-waffle");
require("@synthetixio/hardhat-router");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
    compilers: [
      {
        version: "0.8.13",
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      },
      {
        version: "0.5.16",
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      },
    ],
  },
  // router: {
  //   paths: {
  //     deployments: "deployments", // path to store deployment artifacts
  //     modules: "modules", // path where to find module contracts
  //   },
  // },
};
