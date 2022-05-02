pragma solidity >=0.5.0 <0.6.0;

contract CryptoFlightFactory {
    CryptoFlight[] public flightsDeployed;

    function createFlight(uint256 minBid, string memory departure, string memory destination) public {
        CryptoFlight flight = new CryptoFlight(minBid, departure, destination, msg.sender);
        flightsDeployed.push(flight);
    }

    function getFlightDetailsDeployed() public view returns (CryptoFlight[] memory) {
        return flightsDeployed;
    }
}

contract CryptoFlight {
    struct Traveller {
        uint256 bid;
        address payable user;
        bool confirmed;
    }

    Traveller[] public travellers;
    address payable adminFlight;
    uint256 minBid;
    string departure;
    string destination;
    bool booked;

    modifier onlyAdmin() {
        require(msg.sender == adminFlight);
        _;
    }

    constructor(uint256 _minBid, string memory _departure, string memory _destination, address payable _adminFlight) public payable {
        adminFlight = _adminFlight;
        minBid = _minBid;
        departure = _departure;
        destination =  _destination;
        booked = false;
    }

    function getFlightDetails() public view returns(address, uint256, string memory, string memory, bool) {
        return (adminFlight, minBid, departure, destination, booked);
    }

    function addTraveller() public payable {
        require(msg.value >= minBid);
        
        address payable user = msg.sender;
        
        Traveller memory newTraveller = Traveller({
           user: user,
           bid: msg.value,
           confirmed: false
        });

        travellers.push(newTraveller);
    }
    // confirms the flight 
    // can be done only by the admin
    function confirmFlight(uint64 _seats) public onlyAdmin {
        uint64 fullSeats = 0;

        // this confirms there are empty seats in the flight
        while (fullSeats < _seats && fullSeats < travellers.length) {
            uint256 currentHighestBid = 0;
            uint64 currentHighestId = 0;

            for (uint16 i = 0; i < travellers.length; i++) {
                if (currentHighestBid < travellers[i].bid && !travellers[i].confirmed) {
                    currentHighestBid = travellers[i].bid;
                    currentHighestId = i;
                }
            }

            travellers[currentHighestId].confirmed = true;

            fullSeats++;
        }

        for (uint16 i = 0; i < travellers.length; i++) {
            if (travellers[i].confirmed) {
                address payable _adminFlight = adminFlight;
                _adminFlight.transfer(travellers[i].bid);
            } else {
                Traveller storage traveller = travellers[_seats];
                address payable user = traveller.user;
                user.transfer(traveller.bid);
            }
        }

        booked = true;
    }
}