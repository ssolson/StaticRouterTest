# Create Loaded Static Router

This project will create a "Loaded Static Router" as coined by Igor Yalovoy
(https://github.com/ylv-io) in his DEVCON Bogota 2022 presentation
"Unlimited Size Contracts Using Solidity" (https://youtu.be/qzlUNSt5pnA)

![image](https://user-images.githubusercontent.com/13438942/213811333-c856663a-bdb4-49b0-9ed6-c8bbb767e057.png)


The Static Router will be created using synthtix `hardhat-router`. All source code is from
code the presentation hosted on Igor's github (https://github.com/ylv-io/devcon-bogota-workshop-2022).

As discussed synthtix hardhat plugin

First we need to recreate the router (Router.sol). We will start a local network in
hardhat to deploy to first:

```shell
npx hardhat node
```

With our local node running let us call `deploy` which has been modified by the sythetix
team to compile our contracts and create a router. We call the option win `--skip-proxy`
as we are not interested in the dynamic router here.

With the contracts compiled a static router may be created for them.

```shell
npx hardhat deploy --skip-proxy
```

This will create a Router.sol contract as shown below. If you have issue you may want to delete your contract, artifacts, and deployments folder.

The deployed router is the static router discussed by Igor in his presentation.

To create the Loaded Static router simply use the provided `deployAndCall.js` script:

```shell
npx hardhat run scripts/interact.js --network localhost
```
