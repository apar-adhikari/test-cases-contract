pragma solidity ^0.4.0;

contract test1 {
    function getID(uint uid, bytes32 _plid, bytes32 _iid) pure returns (bytes32, uint) {
        bytes32 cauid = sha256(_plid, _iid);
        return (cauid, uid);
    }
}

/* ABI
[
	{
		"constant": true,
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
		"stateMutability": "pure",
		"type": "function"
	}
]
 */