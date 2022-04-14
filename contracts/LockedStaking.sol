//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract LockedStaking is Ownable {
    // The token being staked
    IERC20 public stakedTokenContract;
    // The token being rewarded
    IERC20 public rewardTokenContract;
    // Amount of reward token emitted per day
    uint256 public dailyRewardRate;
    // The lock period in days;
    uint256 public lockPeriod;

    constructor(
        address _stakedToken,
        address _rewardToken,
        uint256 _rewardRate,
        uint256 _lockPeriod
    ) {
        stakedTokenContract = IERC20(_stakedToken);
        rewardTokenContract = IERC20(_rewardToken);
        dailyRewardRate = _rewardRate;
        lockPeriod = _lockPeriod;
    }

    // Stake
    function stake(uint256 _amount) external {}

    // Unstake
    function unStake(uint256 _amount) external {}

    // Collect Rewards
    function collectRewards() external {}

    // Update reward rate
    //  only Owner
    function updateRewardRate(uint256 _newRate) external onlyOwner {}

    // Update lock period
    //  only Owner
    function updateLockPeriod(uint256 _newPeriod) external onlyOwner {}
}
