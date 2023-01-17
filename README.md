# Basic Sample Hardhat Project

This project should create a static router using synthtic hardhat plugin

First compile the contract

```shell
npx hardhat compile

```

With the contracts compiled a static router may be created for them.

```shell
npx hardhat deploy
```

However an error occurs:

```shell
$ npx hardhat deploy
npm WARN config global `--global`, `--local` are deprecated. Use `--location=global` instead.
hardhat-project
DEPLOYER
ⓘ  subtask hardhat-router-create-deployment: 6ms
ⓘ  subtask hardhat-router-get-deployment-info: 2ms
ⓘ  subtask hardhat-router-load-deployment: 16ms
Compiled 5 Solidity files successfully


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ ‣ Syncing solidity sources with deployment data                                          ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
✓ Deployment data is in sync with sources
ⓘ  subtask hardhat-router-sync-sources: 3ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ ‣ Syncing and compiling source from the Proxy                                            ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Error HH700: Artifact for contract "Proxy" not found.
```

The extension seens to be looking for a `Proxy` contract. How do I define this?

Same error from above but verbose

```shell
$ npx hardhat deploy --show-stack-traces --verbose
npm WARN config global `--global`, `--local` are deprecated. Use `--location=global` instead.
  hardhat:core:config Loading Hardhat config from C:\Users\sterl\Codes\Trustor\StaticRouterTest\hardhat.config.js +0ms
  hardhat:core:global-dir Looking up Client Id at C:\Users\sterl\AppData\Local\hardhat-nodejs\Data\analytics.json +0ms
  hardhat:core:global-dir Client Id found: 9156289c-e866-475d-ae80-64fdc3c78870 +0ms
  hardhat:core:hre Creating HardhatRuntimeEnvironment +0ms
  hardhat:core:hre Running task deploy +54ms
  hardhat:core:hre Running deploy's super +1ms
hardhat-project
DEPLOYER
  hardhat:core:hre Running task hardhat-router-create-deployment +2ms
  hardhat:core:hre Running hardhat-router-create-deployment's super +0ms
ⓘ  subtask hardhat-router-create-deployment: 6ms
  hardhat:core:hre Running task hardhat-router-load-deployment +7ms
  hardhat:core:hre Running hardhat-router-load-deployment's super +0ms
  hardhat:core:hre Running task hardhat-router-get-deployment-info +1ms
  hardhat:core:hre Running hardhat-router-get-deployment-info's super +0ms
ⓘ  subtask hardhat-router-get-deployment-info: 1ms
ⓘ  subtask hardhat-router-load-deployment: 9ms
  hardhat:core:hre Running task compile +8ms
  hardhat:core:hre Running task compile:get-compilation-tasks +1ms
  hardhat:core:hre Running task compile:solidity +0ms
  hardhat:core:hre Running task compile:solidity:get-source-paths +1ms
  hardhat:core:hre Running task compile:solidity:get-source-names +1ms
  hardhat:core:hre Running task compile:solidity:get-dependency-graph +2ms
  hardhat:core:hre Running task compile:solidity:read-file +1ms
  hardhat:core:hre Running task compile:solidity:read-file +1ms
  hardhat:core:hre Running task compile:solidity:read-file +0ms
  hardhat:core:hre Running task compile:solidity:read-file +1ms
  hardhat:core:hre Running task compile:solidity:read-file +0ms
  hardhat:core:hre Running task compile:solidity:transform-import-name +2ms
  hardhat:core:hre Running task compile:solidity:transform-import-name +0ms
  hardhat:core:hre Running task compile:solidity:get-compilation-jobs +2ms
  hardhat:core:tasks:compile The dependency graph was divided in '3' connected components +0ms
  hardhat:core:hre Running task compile:solidity:get-compilation-job-for-file +1ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\BigModule.sol' will be compiled with version '0.8.13' +0ms
  hardhat:core:hre Running task compile:solidity:get-compilation-job-for-file +2ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\CounterModule.sol' will be compiled with version '0.8.13' +1ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\ICounter.sol' added as dependency of 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\CounterModule.sol' +0ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\Data.sol' added as dependency of 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\CounterModule.sol' +1ms
  hardhat:core:hre Running task compile:solidity:get-compilation-job-for-file +1ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\Owned.sol' will be compiled with version '0.5.16' +0ms
  hardhat:core:hre Running task compile:solidity:get-compilation-job-for-file +1ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\Data.sol' will be compiled with version '0.8.13' +1ms
  hardhat:core:hre Running task compile:solidity:get-compilation-job-for-file +0ms
  hardhat:core:compilation-job File 'C:\Users\sterl\Codes\Trustor\StaticRouterTest\contracts\ICounter.sol' will be compiled with version '0.8.13' +1ms
  hardhat:core:hre Running task compile:solidity:handle-compilation-jobs-failures +1ms
  hardhat:core:hre Running task compile:solidity:filter-compilation-jobs +0ms
  hardhat:core:tasks:compile force flag enabled, not filtering +6ms
  hardhat:core:hre Running task compile:solidity:merge-compilation-jobs +1ms
  hardhat:core:hre Running task compile:solidity:compile-jobs +6ms
  hardhat:core:tasks:compile Compiling 2 jobs +6ms
  hardhat:core:hre Running task compile:solidity:compile-job +1ms
  hardhat:core:tasks:compile Compiling job with version '0.8.13' +2ms
  hardhat:core:hre Running task compile:solidity:get-compiler-input +1ms
  hardhat:core:hre Running task compile:solidity:compile-job +11ms
  hardhat:core:tasks:compile Compiling job with version '0.5.16' +11ms
  hardhat:core:hre Running task compile:solidity:get-compiler-input +1ms
  hardhat:core:hre Running task compile:solidity:compile +0ms
  hardhat:core:hre Running task compile:solidity:solc:compile +0ms
  hardhat:core:hre Running task compile:solidity:solc:get-build +0ms
  hardhat:core:hre Running task compile:solidity:compile +1ms
  hardhat:core:hre Running task compile:solidity:solc:compile +0ms
  hardhat:core:hre Running task compile:solidity:solc:get-build +0ms
  hardhat:core:hre Running task compile:solidity:log:run-compiler-start +6ms
  hardhat:core:hre Running task compile:solidity:solc:run +0ms
  hardhat:core:hre Running task compile:solidity:log:run-compiler-start +6ms
  hardhat:core:hre Running task compile:solidity:solc:run +0ms
  hardhat:core:hre Running task compile:solidity:log:run-compiler-end +20ms
  hardhat:core:hre Running task compile:solidity:check-errors +1ms
  hardhat:core:hre Running task compile:solidity:log:compilation-errors +0ms
  hardhat:core:hre Running task compile:solidity:emit-artifacts +0ms
  hardhat:core:tasks:compile Emitting artifact for contract 'Owned' +38ms
  hardhat:core:hre Running task compile:solidity:get-artifact-from-compilation-output +3ms
  hardhat:core:hre Running task compile:solidity:log:run-compiler-end +130ms
  hardhat:core:hre Running task compile:solidity:check-errors +1ms
  hardhat:core:hre Running task compile:solidity:log:compilation-errors +0ms
  hardhat:core:hre Running task compile:solidity:emit-artifacts +0ms
  hardhat:core:tasks:compile Emitting artifact for contract 'BigModule' +136ms
  hardhat:core:hre Running task compile:solidity:get-artifact-from-compilation-output +5ms
  hardhat:core:tasks:compile Emitting artifact for contract 'CounterModule' +0ms
  hardhat:core:hre Running task compile:solidity:get-artifact-from-compilation-output +0ms
  hardhat:core:tasks:compile Emitting artifact for contract 'CounterStorage' +0ms
  hardhat:core:hre Running task compile:solidity:get-artifact-from-compilation-output +1ms
  hardhat:core:tasks:compile Emitting artifact for contract 'ICounter' +1ms
  hardhat:core:hre Running task compile:solidity:get-artifact-from-compilation-output +0ms
  hardhat:core:hre Running task compile:solidity:log:compilation-result +3ms
Compiled 5 Solidity files successfully
  hardhat:core:hre Running task compile:remove-obsolete-artifacts +1ms
  hardhat:core:hre Running task hardhat-router-sync-sources +3ms
  hardhat:core:hre Running hardhat-router-sync-sources's super +0ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ ‣ Syncing solidity sources with deployment data                                          ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
✓ Deployment data is in sync with sources
ⓘ  subtask hardhat-router-sync-sources: 3ms
  hardhat:core:hre Running task hardhat-router-sync-proxy +3ms
  hardhat:core:hre Running hardhat-router-sync-proxy's super +0ms


┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ ‣ Syncing and compiling source from the Proxy                                            ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Error HH700: Artifact for contract "Proxy" not found.

HardhatError: HH700: Artifact for contract "Proxy" not found.
    at Artifacts._handleWrongArtifactForContractName (C:\Users\sterl\Codes\Trustor\StaticRouterTest\node_modules\hardhat\src\internal\artifacts.ts:702:11)
    at Artifacts._getArtifactPathFromFiles (C:\Users\sterl\Codes\Trustor\StaticRouterTest\node_modules\hardhat\src\internal\artifacts.ts:827:19)
    at Artifacts._getArtifactPath (C:\Users\sterl\Codes\Trustor\StaticRouterTest\node_modules\hardhat\src\internal\artifacts.ts:507:21)
    at Artifacts.readArtifact (C:\Users\sterl\Codes\Trustor\StaticRouterTest\node_modules\hardhat\src\internal\artifacts.ts:71:26)
    at SimpleTaskDefinition.action (C:\Users\sterl\Codes\Trustor\StaticRouterTest\node_modules\@synthetixio\hardhat-router\subtasks\sync-proxy.js:17:28)
    at Environment._runTaskDefinition (C:\Users\sterl\Codes\Trustor\StaticRouterTest\node_modules\hardhat\src\internal\core\runtime-environment.ts:311:14)
```
