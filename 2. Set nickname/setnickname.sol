pragma solidity ^0.4.21;

// Relevant part of the CaptureTheEther contract.
contract CaptureTheEther {
    mapping (address => bytes32) public nicknameOf;

    function setNickname(bytes32 nickname) public {
        nicknameOf[msg.sender] = nickname;
    }
}

/*
Il suffit de compiler ce contrat.
Ensuite, il convient, dans Remix, de coller l'adresse qui nous est donnée dans Capture the Ether : 0x71c46Ed333C35e4E6c62D32dc7C8F00D125b4fee
Et la coller en face de At Address -> Ce qui va nous permettre d'intéragir avec le contrat qui est déjà à cette adresse en particulier.

Ensuite, il convient de transformer votre pseudo en bytes32.

Pour cela, la méthode est automatique et manuelle :
1. Rendez-vous ici : https://web3-type-converter.onbrn.com/

2. Insérez votre pseudo

3. Cliquez sur convert to : bytes32/hex

4. Sachez qu'il faudra 64 caractères après le 0x

De ce fait, étant donné que par exemple, pour "matopop", on vous donnera: 
0x6d61746f706f70
Il conviendra d'avoir 66 caractères au total, en ajoutant des 0, ce qui donnera:
0x6d61746f706f7000000000000000000000000000000000000000000000000000
Je vous invite à utiliser cet outil si vous souhaitez rapidement compter les caractères:
https://convertir.github.io/outils/calculer-longueur-texte-en-ligne.html

Ensuite, vous l'insérez dans la fonction setNickname.
*/
