// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract RegisterAccess {
    // Array de strings
    string[] private info;
    // Almacena direcciones de contratos o billeteras
    address public owner;
    // Cada dirección tendrá un valor verdadero o falso si están o no autorizados a hacer cambios en el contrato
    mapping (address => bool) public allowlist; 
    // Si la dirección no está en la lista o tiene el booleano falso, va a retornar falso
    constructor() {
        owner = msg.sender;
        allowlist[msg.sender] = true;
    } 
    // Los eventos no son grabados en la blockchain pero pueden ser accedidos, son monitoreados por servicios
    event InfoChange(string oldInfo, string newInfo);
    // El modifier es un nombre que se debe agregar en las funciones y los requerimientos del modifier serán agregadas a la funcion
    // Ej: solo el owner puede usar las funciones, en este caso las funciones de agregar y eliminar un miembro
    // Si no se tiene accesos, y se ejecuta la funcion, se pierde gas y retornará error
    modifier onlyOwner {
        require(msg.sender == owner,"Only owner");
        _;
    }
    // Este modificador permite que la direccion que envía la transaccion está autorizado en el allowlist
    modifier onlyAllowlist {
        require(allowlist[msg.sender] == true, "Only allowlist");
        _;
    } 

    function getInfo(uint index) public view returns (string memory) {
        return info[index];
    }
    // emit es para emitir el evento
    function setInfo(uint index, string memory _info) public onlyAllowlist {
        emit InfoChange (info[index], _info);
        info[index] = _info;
    }
    // Push es para agregar información al final de la lista
    function addInfo(string memory _info) public onlyAllowlist returns (uint index) {
        info.push (_info);
        index = info.length -1;
    }

    function listInfo() public view returns (string[] memory) {
        return info;
    }

    function addMember (address _member) public onlyOwner {        
        allowlist[_member] = true;
    }

    function delMember (address _member) public onlyOwner {
        allowlist[_member] = false;
    }
} 