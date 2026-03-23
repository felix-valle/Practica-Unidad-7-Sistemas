Documentación de la Interfaz (API del Contrato)

Esta sección describe las funciones principales del estándar ERC-20 implementadas en Sopas_token.

1. Funciones de Lectura
No requieren el consumo de gas ni firma de transacción.

name(): Devuelve el nombre completo del activo: Sopas_token.
symbol(): Devuelve el ticker o abreviatura: "en mi caso SPV".
totalSupply(): Devuelve la cantidad de tokens disponibles (1.000.000 SPV).

2. Funciones de Escritura 
Requieren el pago de gas en Sepolia ETH y firma mediante MetaMask.
transfer("Desde, "hacia"): Desplaza una cantidad de tokens desde la billetera del emisor hacia la dirección de destino en la red Sepolia.

approve : Autoriza a un tercero (como el contrato de Uniswap) a gestionar una cantidad de tus tokens. Es un paso obligatorio realizado para la creación de la Liquidity Pool.

