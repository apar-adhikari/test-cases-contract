pragma solidity ^0.4.0;

contract test3 {
    
    bytes32[] public cauids;

    
    function getID(uint uid, bytes32 _plid, bytes32 _iid) returns (bytes32, uint) {
        fillnumbers(_plid, _iid);
        fillnumbers(_plid, _iid);
        fillnumbers(_plid, _iid);
        fillnumbers(_plid, _iid);
        fillnumbers(_plid, _iid);

        return (cauids[0], uid);
    }
    
    function fillnumbers(bytes32 _plid, bytes32 _iid) {
        cauids.push(sha256(_plid, _iid));
    }
}

/* ABI
[
	{
		"constant": false,
		"inputs": [
			{
				"name": "_plid",
				"type": "bytes32"
			},
			{
				"name": "_iid",
				"type": "bytes32"
			}
		],
		"name": "fillnumbers",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
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
				"type": "bytes32"
			},
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
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