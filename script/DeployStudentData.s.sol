// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/StudentData.sol";

contract DeployStudentData is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        StudentData student = new StudentData("John Doe", 20);
        
        console.log("StudentData deployed to:", address(student));
        
        vm.stopBroadcast();
    }
}