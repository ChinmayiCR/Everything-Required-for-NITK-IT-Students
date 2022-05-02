pragma solidity 0.6.12;

contract CellPhoneContract {
	uint256 public costPerMonth;
    
    // Payable constructor can receive Ether
    constructor(uint256 cost) payable public{
        costPerMonth = cost;
    }
    // the subscriber pays a monthly fee in ether to the contract
    function depositBalance() payable public {
    
    }
    // Ability to withdraw funds from the contract so they can be transferred to the company's own accounts
    function withdrawBalance() public {
       
        msg.sender.transfer(address(this).balance);

    }
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    
    //allows the cell phone company to check the status of the account on a given date
    function isBalanceCurrent(uint256 months) public view returns (bool) {
        return costPerMonth * months == address(this).balance;
    }
}