//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// GENERATED CODE - do not edit manually!!
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

contract Router {
    error UnknownSelector(bytes4 sel);

    address private constant _BIG_MODULE = 0xb7278A61aa25c888815aFC32Ad3cC52fF24fE575;
    address private constant _COUNTER_MODULE = 0xCD8a1C3ba11CF5ECfa6267617243239504a98d90;
    address private constant _COUNTER_STORAGE = 0x82e01223d51Eb87e16A03E24687EDF0F294da6f1;

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
                case 0x999b93af { result := _BIG_MODULE } // BigModule.quote()
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
