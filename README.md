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

Say yes to the prompts. If you have issues you may want to delete your contract, artifacts, and deployments folder and try again. 
You should see something like the following as you work through the deploy prompts:
```shell
$ npx hardhat deploy --skip-proxy
npm WARN config global `--global`, `--local` are deprecated. Use
hardhat-project
DEPLOYER
ⓘ  subtask hardhat-router-create-deployment: 7ms
ⓘ  subtask hardhat-router-get-deployment-info: 1ms
ⓘ  subtask hardhat-router-load-deployment: 10ms
Compiled 13 Solidity files successfully


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Syncing solidity sources with deployment data
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
! The following modules are going to be deployed for the first t
!   contracts/modules/BigModule.sol:BigModule
!   contracts/modules/CounterModule.sol:CounterModule
!   contracts/modules/CounterModule.sol:CounterStorage
ⓘ  subtask hardhat-router-sync-sources: 36ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Syncing and compiling source from the Proxy
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ Proxy deployment data is in sync with sources
ⓘ  subtask hardhat-router-sync-proxy: 9ms

Please confirm these deployment parameters:
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ commit: 38d9b3a40f07a8622bc6ee76e782e7f26b03c518
┃ branch: main
┃ network: localhost
┃ provider: http://localhost:8545
┃ instance: official
┃ debug: false
┃ deployment: C:/Users/sterl/Codes/Trustor/StaticRouterTest/depl
┃ signer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
┃ signer balance: 10000.0 ETH
┃ deployment modules:
┃ > contracts/modules/BigModule.sol:BigModule
┃ > contracts/modules/CounterModule.sol:CounterModule
┃ > contracts/modules/CounterModule.sol:CounterStorage
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
√ Proceed with deployment ... yes
ⓘ  subtask hardhat-router-print-info: 42453ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Validating module storage usage
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ Storage layout is valid
ⓘ  subtask hardhat-router-validate-storage: 5ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Validating modules
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ Modules are valid
ⓘ  subtask hardhat-router-validate-modules: 5ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Validating all visible functions are defined in interfaces
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ Visible functions are defined in interfaces
ⓘ  subtask hardhat-router-validate-interfaces: 3ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Deploying modules
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ⓘ  The following 3 contracts are going to be deployed for the fi
! contracts/modules/BigModule.sol:BigModule
! contracts/modules/CounterModule.sol:CounterModule
! contracts/modules/CounterModule.sol:CounterStorage
√ Are you sure you want to make these changes? ... yes
√ Are you sure you want to deploy contracts/modules/BigModule.so
✅ Deploying contracts/modules/BigModule.sol:BigModule
ⓘ  Processing transaction 0x5707fbb25c5dc1a53fdeb5e57a92104352c6
✓ Transaction successful with gas 5360098
ⓘ  subtask hardhat-router-deploy-contract: 1666ms
√ Are you sure you want to deploy contracts/modules/CounterModul
✅ Deploying contracts/modules/CounterModule.sol:CounterModule
ⓘ  Processing transaction 0x3c82abc56b592da3929c1b6e6d5635b60aeb
✓ Transaction successful with gas 232982
ⓘ  subtask hardhat-router-deploy-contract: 1890ms
√ Are you sure you want to deploy contracts/modules/CounterModul
✅ Deploying contracts/modules/CounterModule.sol:CounterStorage
ⓘ  Processing transaction 0x4524ad819893ea48f82e11e269b4b90bf373
✓ Transaction successful with gas 67066
ⓘ  subtask hardhat-router-deploy-contract: 1259ms
ⓘ  subtask hardhat-router-deploy-contracts: 7389ms
ⓘ  subtask hardhat-router-generate-deploy-modules: 7390ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ‣ Generating router source
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Router code generated and written to C:\Users\sterl\Codes\Tru
ⓘ  subtask hardhat-router-generate-router-source: 6ms
Compiled 13 Solidity files successfully

ⓘ  Processing transaction 0x94c70c8ⓘ  Processing transaction 0x94c70c8c6411dc66ddd0c5646546c8e64d99
ⓘ  task deploy: 51917ms            23661
ⓘ  task deploy: 51917ms
```

This will create a Router.sol contract as shown below. 

The deployed router is the static router discussed by Igor in his presentation.

To create the Loaded Static router simply use the provided `deployAndCall.js` script:

```shell
npx hardhat run scripts/interact.js --network localhost
```
