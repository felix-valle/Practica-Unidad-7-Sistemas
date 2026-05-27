# Documentación de la Interfaz (API del Contrato)

Este documento detalla las funciones principales del estándar ERC20 que están implementadas en Sopas_token (SPV). Al tratarse de un contrato inteligente, estas funciones actúan como la API pública que permite a otras aplicaciones, billeteras o plataformas interactuar con nuestra criptomoneda.

## 1. Funciones de Lectura

Estas funciones sirven para consultar información del contrato de forma pública. Son totalmente gratuitas, no requieren firma de transacción ni consumen el gas de la red Sepolia.

* name(): Devuelve el nombre completo del activo, que está configurado como "Sopas_token".
* symbol(): Devuelve el ticker o la abreviatura oficial de la moneda, que es "SPV".
* totalSupply(): Devuelve la cantidad total de tokens que existen en circulación, fijada en un límite de 1.000.000 SPV.
* balanceOf(account): Permite consultar el saldo exacto de tokens SPV que tiene una dirección de billetera específica en la red.

---

## 2. Funciones de Escritura

Estas funciones modifican el estado de la blockchain, por lo que requieren de forma obligatoria que el usuario conecte su billetera MetaMask, firme la transacción de forma digital y pague la comisión de red (gas) utilizando Sepolia ETH.

* transfer(to, amount): Mueve una cantidad determinada de tokens desde la billetera de la persona que ejecuta la función hacia la dirección de destino especificada en el parámetro "to". Si el emisor no tiene tokens suficientes, la blockchain cancela la transacción.

* approve(spender, amount): Autoriza a un tercero (en este proyecto, el contrato inteligente de Uniswap) a gestionar una cantidad límite de tus tokens en tu nombre. Este es el paso previo y obligatorio que se ejecutó de forma automática para permitir la creación y provisión de fondos en la Liquidity Pool.
