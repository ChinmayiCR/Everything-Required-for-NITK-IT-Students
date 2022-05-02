pragma solidity 0.6.12; 

contract SimpleBankContract
{ 
    uint256 bankBalance = 0; 
    uint256 public transferAmount; 
    
    // returns the balance in the contract 
    
    function getContractBalance() public view returns(uint256)
    { 
        return bankBalance; 
        
    } 
    
    mapping(address => uint256) balanceList; 
    mapping(address => uint256) timestampsOfDeposits; 
    
    // adds payable amount to the address 
    
    function depositBalance() public payable 
    { 
        balanceList[msg.sender] = msg.value; 
        bankBalance = bankBalance + msg.value; 
        timestampsOfDeposits[msg.sender] = block.timestamp; 
    } 
    
    function getBalance(address userAddress) public view returns(uint256)
    { 
        uint principal = balanceList[userAddress]; 
        uint timeElapsed = block.timestamp - timestampsOfDeposits[userAddress];
        return principal + uint((principal * 7 * timeElapsed) / (100 * 365 * 24 * 60 * 60)) + 1; 
    } 
    
    // withdraws amount from the contract and transfers sender account 
    
    function withdrawBalance() public payable 
    {
        address payable withdrawTo = payable(msg.sender); 
        transferAmount = getBalance(msg.sender); 
        withdrawTo.transfer(transferAmount); 
        bankBalance = bankBalance - transferAmount; 
        balanceList[msg.sender] = 0; 
    } 
}