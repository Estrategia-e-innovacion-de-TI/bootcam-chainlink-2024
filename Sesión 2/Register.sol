// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Definición del contrato
contract Register {
    // Variable donde guardamos todo tipo de información al ser de tipo String
    // Es privada así que solo se puede acceder desde el contrato
    string private info;
    // Esta función retorna la variable info y es memory porque no se está guardando en ninguna parte de Blockchain, es solo para observar la transacción
    function getInfo() public view returns (string memory){
        return info;
    }
    // Aca quiero guardar la información de mi variable en la Blockchain
    // Esta información puede ser vista desde la Blockchain
    function setInfo(string memory _info) public {
        info = _info;
    }
    
}

