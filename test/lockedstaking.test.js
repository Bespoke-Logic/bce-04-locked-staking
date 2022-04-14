const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("LockedStaking", function () {
  it("Should ...", async function () {
    const LockedStaking = await ethers.getContractFactory("LockedStaking");
    const staking = await LockedStaking.deploy({});
    await staking.deployed();
  });
});
