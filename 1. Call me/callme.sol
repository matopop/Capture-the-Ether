 pragma solidity ^0.4.21;

contract CallMeChallenge {
    bool public isComplete = false;

    function callme() public {
        isComplete = true;
    }
}

contract caller {
    address public contractAddr;
    
    constructor (address _contractAddr) public {
        contractAddr = _contractAddr;
    }
    function calling() public {
        CallMeChallenge(contractAddr).callme();
    }
}

/*
- Déployer le contrat caller sur remix/autre compilateur en indiquant l'adresse du contrat donnée par le site Capture the Ether
- Appeler la fonction calling
Fini.
*/
