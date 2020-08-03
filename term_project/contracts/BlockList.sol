pragma solidity ^0.4.28;

contract BlockList {
  
  mapping (memory string => uint256) private timestamp;
  memory string  public blockIp;
  memory string[] public blockList;
  uint256 count = 0;

  function BlockList() public {}

  function updateBlockList(string memory ipAddress,uint256 currenttime) public {
    blockIp = ipAddress;
    if(timestamp[ipAddress]==0)
    {
        count++;
        blockList.push(blockIp);
    }
      timestamp[ipList] = currenttime;
  }

function getBlockList(uint256 num) view public returns (memory string,uint256) {
    return (blockList[num],timestamp[blockList[num]]);
  }
  
function getLength() view public returns (uint256) {
    return (count);
  }
}