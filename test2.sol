pragma solidity ^0.4.0;

contract test2 {
    
    event LogTestCase1(
        address indexed _from,
        address indexed _to,
        bytes32 indexed _id,
        uint _value
    );
    event LogOfCauidGen(
        address indexed _from,
        address indexed _to,
        bytes32 indexed _id,
        bytes32 cauid,
        uint uid
    );
    
    function getID(uint uid, bytes32 _plid, bytes32 _iid) returns (bool){
        // bytes32 _id = "0x74657374";
        // bytes32 cauid = sha256(_plid, _iid);
        emit LogTestCase1(msg.sender, address(this), "0x74657374", msg.value);
        emit LogTestCase1(msg.sender, address(this), "0x74657374", msg.value);
        emit LogTestCase1(msg.sender, address(this), "0x74657374", msg.value);
        emit LogTestCase1(msg.sender, address(this), "0x74657374", msg.value);
        emit LogOfCauidGen(msg.sender, address(this), "0x74657374", sha256(_plid, _iid), uid);
        return false;
    }
}

/* ABI
[
	{
		"constant": false,
		"inputs": [
			{
				"name": "uid",
				"type": "uint256"
			},
			{
				"name": "_plid",
				"type": "bytes32"
			},
			{
				"name": "_iid",
				"type": "bytes32"
			}
		],
		"name": "func",
		"outputs": [
			{
				"name": "",
				"type": "bool"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"name": "_from",
				"type": "address"
			},
			{
				"indexed": true,
				"name": "_to",
				"type": "address"
			},
			{
				"indexed": true,
				"name": "_id",
				"type": "bytes32"
			},
			{
				"indexed": false,
				"name": "_value",
				"type": "uint256"
			}
		],
		"name": "LogTestCase1",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"name": "_from",
				"type": "address"
			},
			{
				"indexed": true,
				"name": "_to",
				"type": "address"
			},
			{
				"indexed": true,
				"name": "_id",
				"type": "bytes32"
			},
			{
				"indexed": false,
				"name": "cauid",
				"type": "bytes32"
			},
			{
				"indexed": false,
				"name": "uid",
				"type": "uint256"
			}
		],
		"name": "LogOfCauidGen",
		"type": "event"
	}
] */
