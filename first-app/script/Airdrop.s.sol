// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "sismo-connect-solidity/SismoConnectLib.sol";
import {Airdrop} from "src/Airdrop.sol";

contract DeployAirdrop is Script {
  function run() public {
    console.log("Deploying Airdrop contract...");

    vm.startBroadcast();
    Airdrop airdrop = new Airdrop("My airdrop contract", "AIR");
    console.log("Airdrop Contract deployed at", address(airdrop));
    vm.stopBroadcast();
  }
}
