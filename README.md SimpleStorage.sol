
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
contract SimpleStorageTest is Test {
 SimpleStorage simpleStorage;
// Runs before each test
 function setUp() public {
 simpleStorage = new SimpleStorage();
 }
 function testInitialValueIsZero() public {
 uint value = simpleStorage.get();
 assertEq(value, 0);
 }
 function testSetValue() public {
 simpleStorage.set(100);
 assertEq(simpleStorage.get(), 100);
 }
 function testSetDifferentValue() public {
 simpleStorage.set(55);
 assertTrue(simpleStorage.get() == 55);
 }
}
