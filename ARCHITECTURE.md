#Guía de Arquitectura y Estilo

## Patrones Utilizados
* **Estándar ERC20:** Se utilizó este patrón por ser el estándar de la industria para tokens fungibles, lo que garantiza que cualquier exchange o wallet pueda reconocer a la criptomoneda creada (**Sopas_token**).
* **Herencia de OpenZeppelin:** Para evitar vulnerabilidades de seguridad, el contrato hereda de las librerías oficiales de OpenZeppelin.

## Estructura del Proyecto
* **Smart Contract:** Desarrollado en Solidity y compilado con la versión 0.8.x en Remix, Lo que nos a permitido desarrolarlo y compilado en segundos ademas de gratis.
* **Infraestructura:** Desplegado sobre la red de prueba Sepolia para testeo de coste gratuito ademas de poder equivocarnos todas las veces qque queramos ya que al ser red de prueba podemos modificarlos las veces que sean necesarias.
* **Capa de Mercado:** Implementación de una pool de liquidez en Uniswap para permitir intercambios descentralizados el valor de nuetra moneda es el siguiente (el valor de 1 ethereum es igual a 1000 SPV).
