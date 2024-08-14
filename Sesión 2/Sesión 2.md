## Fundamentos de SOlidity

Los smart contracts pueden representar un contrato, son programas de computador publicados y ejecutados en un entorno Blockchain, son inmutables y ejecutados de forma autónoma cuando se activa o se llama el contrato y estos contratos no tienen intermediarios.
Tienen la capacidad de resolver los problemas de confianza en la sociedad. Todo está garantizado por la matemática, sin necesidad de papeleo.
Para esta sesión es importante activar las Testnets en nuestra Metamask Wallet.

Para nuestro primer contrato inteligente  debemos conectar Remix IDE con nuestra billetera en Metamask. Para esto, al ingresar a remix, en el lado izquierdo de la pantalla se selecciona en el menu Deploy & rUN transactions y se configura como ambiente la opción "Injected Provider - Metamask" y autométicamente se abrirá la extensión de Metamask para aprobar la conexión.
Se pueden conectar una o varias cuentas de la billetera.
Para esta sesión el primer smart contract será Register.sol

En Register.sol encontraremos en la primer linea el comentario
// SPDX-License-Identifier: MIT
Esta línea es muy importante ya que es la Licencia del código que se está usando

Luego de desplegar el contrato, al ingresar al sepolia etherscan https://sepolia.etherscan.io Se puede consultar el contrato y las diferentes trasancciones que se han realizado.
Para este ejercicio, el contrato desplegado puede ser consultado en el buscador con la siguiente dirección 0x63a436b2737dc000e5d62391971a818a19182c18
Al ingresar al contrato, se observan las transacciones que se han realizado, y al ingresar a las trasacciones de la función setInfo, se puede ver los diferentes cambios que ha tenido la variable. Por lo que hay manera de hacer auditorías al contrato.

Si deseo interactuar con el contrato de otra persona tenemos que compilar el código que tenemos y en la sección de Deploy & Run Transactions hay una sección llamada "At Address" o "En la Dirección" donde se pega la dirección del contrato de la otra persona, click en "At Address" y las funciones de ese contrato se podrán observar en la sección de Contratos Publicados