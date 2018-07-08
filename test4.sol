pragma solidity ^0.4.0;

contract test4 {
    
    bytes32[] public cauids;
    event LogTestCase(
        uint num
    );
    event LogOfCauidGen(bytes32 cauid, uint uid);
    
    function getID(uint uid, bytes32 _plid, bytes32 _iid) returns (bool) {
        for (uint i=1; i<=15; i++) {
            cauids.push(sha256(_plid, _iid));
            if (i > 13) {
                emit LogTestCase(i);
            }
        }
        emit LogOfCauidGen(cauids[0], uid);
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
		"name": "getID",
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
				"indexed": false,
				"name": "num",
				"type": "uint256"
			}
		],
		"name": "LogTestCase",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
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
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "cauids",
		"outputs": [
			{
				"name": "",
				"type": "bytes32"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]
 */
