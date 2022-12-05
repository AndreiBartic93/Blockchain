pragma solidity ^0.8.7;

contract MyContract {
    //State Variables - exist on the blockchain
    //uint - unsigned integer
    //int - integer
    int public myInt = 1;
    uint public myUint = 1; //is like uint256
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    
    string public myString = "Hello";
    bytes32 public myBytes32 = "Hello2"; //same as string

    address public myAddress = 0x0000000000000000000000000000000000000000;
    
    struct MyStruct {
        uint myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello");

    //Array
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple", "banana", "carrot"];
    string[] public values;
    uint[][] public array2D = [[1,2,3], [4,5,6]];    

    //Mapping
    mapping(uint => string) public names;
    mapping(uint => Book) public books;

    //nested mappings(mapping inside other mapping)
    mapping(address => mapping(uint => Book)) public myBooks2;

    //creating a "database" of struct
    struct Book {
        string title;
        string author;
    }
    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
         myBooks2[msg.sender][_id] = Book(_title, _author);      
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    //Local Variables
    function getValue() public pure returns(uint) {
        uint value = 1; //local variable
        return value;
    }

    function addValuee(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns (uint) {
        return values.length;
    }

}