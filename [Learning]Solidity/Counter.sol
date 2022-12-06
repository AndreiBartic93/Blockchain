pragma solidity ^0.8.7;

contract Counter {
    
    uint count = 0; //state variable: this will be saved in blockchain, we can read this value later

    /*
        view -> only view the count not change "count"
    */
    function getCount() public view returns(uint) {
        return count;
    }

    function incrementCount() public {
        count = count++;
    }
}