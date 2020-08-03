const BlockList = artifacts.require("BlockList");

module.exports = function(deployer) {
  deployer.deploy(BlockList);
};
