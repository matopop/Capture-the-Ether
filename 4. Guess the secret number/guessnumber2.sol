// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.10;

contract bruteforce {
    function whili() public pure returns (uint8){
        for (uint8 i = 1; i < 256; i++) {
            if (keccak256(abi.encodePacked(i)) == 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365) {
                return (i);
            }
        }
        return (0);
    }
}

/*
J'ai créé une fonction qui va simplement tester toutes les possibilités de 1 à 255
Pourquoi ?
Car dans la fonction donnée par Capture the Ether, on nous dit que c'est un uint8 maximum.
Du coup, je bruteforce avec une boucle for qui va simplement tester chaque possibilité jusqu'à tomber sur le bon hash.

En l'occurence, ça retourne 170.
Il suffit donc d'appeler la fonction guess du contrat GiessTheSecretNumberChallenge en indiquant 170 (et en donnant 1ether aussi évidemment, comme indiqué dans la fonction)
*/
