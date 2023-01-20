// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { ICounter } from './interfaces/ICounter.sol';

import { Data } from './modules/Data.sol';
import { BigModule } from './modules/BigModule.sol';
import { CounterModule } from './modules/CounterModule.sol';
import { Router } from './Router.sol';

contract LoadedStaticRouter is CounterModule, Router {
}