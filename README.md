# Create Static Router

This project should create a static router using synthtix hardhat plugin

First compile the contract

```shell
npx hardhat compile

```

With the contracts compiled a static router may be created for them.

```shell
npx hardhat deploy
```

This will create a Router.sol contract as shown below. The deployment will fail on a getImplementation() when deploying the Proxy... but at this point I am not interested in a Proxy just the static router.

```
//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// GENERATED CODE - do not edit manually!!
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

contract Router {
    error UnknownSelector(bytes4 sel);

    address private constant _COUNTER_MODULE = 0x5FbDB2315678afecb367f032d93F642f64180aa3;
    address private constant _COUNTER_STORAGE = 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512;

    fallback() external payable {
        _forward();
    }

    receive() external payable {
        _forward();
    }

    function _forward() internal {
        // Lookup table: Function selector => implementation contract
        bytes4 sig4 = msg.sig;
        address implementation;

        assembly {
            let sig32 := shr(224, sig4)

            function findImplementation(sig) -> result {
                switch sig
                case 0x3b80a793 { result := _COUNTER_MODULE } // CounterModule.const()
                case 0x60fe47b1 { result := _COUNTER_MODULE } // CounterModule.set()
                case 0x6d4ce63c { result := _COUNTER_MODULE } // CounterModule.get()
                case 0x74969fee { result := _COUNTER_MODULE } // CounterModule.complex()
                leave
            }

            implementation := findImplementation(sig32)
        }

        if (implementation == address(0)) {
            revert UnknownSelector(sig4);
        }

        // Delegatecall to the implementation contract
        assembly {
            calldatacopy(0, 0, calldatasize())

            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())

            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}

```
