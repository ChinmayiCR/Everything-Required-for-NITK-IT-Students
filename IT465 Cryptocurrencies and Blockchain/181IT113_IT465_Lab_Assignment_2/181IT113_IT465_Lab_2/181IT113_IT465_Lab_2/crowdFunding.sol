pragma solidity >= 0.6.0 < 0.9.0;

contract creationFunding{
    CrowdFunding[] public fundings;
    function createFunding(uint inputGoalAmount, uint inputDeadline) public {
        CrowdFunding newfunding = new CrowdFunding(inputGoalAmount, inputDeadline, msg.sender);
        fundings.push(newfunding);
    }
}

contract CrowdFunding{
    mapping(address => uint) public contributors;
    address public admin;
    uint public noOfContributors;
    uint public minContribution;
    uint public deadline;
    uint public goalAmount;
    uint public raisedAmount;
    
    struct Request{
        string description;
        address payable recipient;
        uint value;
        bool completed;
        uint noOfVoters;
        mapping(address => bool) voters;
    }
    
    event ContributeEvent(address _sender, uint _value);
    event CreateRequestEvent(string _description, address _recipient, uint _value);
    event MakePaymentEvent(address _recipient, uint _value);
    
    mapping(uint =>Request) public requests;
    
    uint public numRequests;
    
    
    constructor(uint _goalAmount, uint _deadline, address eoa){
        goalAmount = _goalAmount * (1 ether);
        deadline = block.timestamp + _deadline;
        admin = eoa;
        minContribution = 100 wei;
        
    }
    function contribute() public payable{
        //Contribution can be made within the deadline
        require(block.timestamp < deadline, "Deadline has passed!"); 
        //A minimum amount of contribution has to be made
        require(msg.value >= minContribution, "Minimum Contribution Not Met!");
        if(contributors[msg.sender] == 0){
            noOfContributors++;
        }
        
        contributors[msg.sender] += msg.value;
        raisedAmount += msg.value;
        emit ContributeEvent(msg.sender, msg.value);
        
    }

    receive() payable external {
        contribute();
    }
    //checks balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    // Refund the money
    function refund() public{
        // if the deadline has passed and goalAmount amount hasn't been raised
        require(block.timestamp > deadline && raisedAmount < goalAmount); //check
        require(contributors[msg.sender] > 0);
        
        //transfers donated money to recipient
        address payable recipient = payable(msg.sender);
        uint value = contributors[msg.sender];
        recipient.transfer(value);
        //balance becomes zero
        contributors[msg.sender] = 0;
    }
    
    //admin is the one who deployed the fundingCreator contract
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only Admin can call this function");
        _;
    }
    
    
    function createRequest(string memory _description, address payable _recipient, uint _value) public onlyAdmin{
        Request storage newRequest = requests[numRequests];
        numRequests++;
        
        newRequest.description = _description;
        newRequest.recipient = _recipient;
        newRequest.value = _value;
        newRequest.completed = false;
        newRequest.noOfVoters = 0;
        
        emit CreateRequestEvent(_description, _recipient, _value);
    }
    
    function voteRequest(uint _requestNo) public{
        require(contributors[msg.sender] > 0, "You must be a contributor to vote!");
        Request storage thisRequest = requests[_requestNo];
        
        require(thisRequest.voters[msg.sender] == false, "You have already voted!");
        thisRequest.voters[msg.sender] = true;
        thisRequest.noOfVoters++;
    }
    function makePayment(uint _requestNo) public onlyAdmin{
        require(raisedAmount >= goalAmount);
        Request storage thisRequest = requests[_requestNo];
        require(thisRequest.completed == false, "This request has been completed");
        // majority of voters voted 'yes' (more than 50%)
        require(thisRequest.noOfVoters > noOfContributors / 2);
        
        thisRequest.recipient.transfer(thisRequest.value);
        thisRequest.completed = true;
        emit MakePaymentEvent(thisRequest.recipient, thisRequest.value);
    }
}










