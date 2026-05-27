# Guía de Arquitectura y Estilo

Este documento explica las decisiones técnicas, los patrones de diseño y la infraestructura que utilicé para desarrollar y lanzar Sopas_token (SPV). El objetivo es que cualquier programador que herede este proyecto entienda cómo funciona el ecosistema en pocos minutos.

---

## Patrones de Diseño Utilizados

* Estándar ERC20: Decidí utilizar este patrón porque es el estándar oficial de la industria en la red de Ethereum para la creación de tokens fungibles. Al implementar esta interfaz, me aseguro de que la criptomoneda sea totalmente interoperable. Esto significa que cualquier casa de cambio descentralizada (como Uniswap) o cualquier billetera digital (como MetaMask) puede reconocer el token e interactuar con él de forma nativa, sin necesidad de programar adaptaciones extrañas en el código.

  
* Herencia de Contratos (OpenZeppelin): En lugar de escribir toda la lógica del token desde cero, el contrato hereda directamente las librerías oficiales de OpenZeppelin. Esta es una decisión de arquitectura clave para la seguridad, ya que reduce drásticamente el riesgo de sufrir vulnerabilidades críticas (como fallos en el control de acceso) al utilizar un código que ya ha sido revisado a fondo por la comunidad Web.



## Estructura del Proyecto e Infraestructura

* Smart Contract (Capa de Lógica): El código está desarrollado en el lenguaje de programación Solidity y compilado a través de la herramienta web Remix IDE, utilizando la versión del compilador 0.8.x. Trabajar con este entorno basado en la nube me permitió agilizar el proceso, ya que ofrece una infraestructura centralizada que compila y verifica el contrato inteligente en cuestión de segundos.
  
* Infraestructura de Red: El contrato está subido de forma inmutable en la red de pruebas Ethereum Sepolia Testnet. Utilizar esta red funciona como un entorno de simulación seguro. Nos permite validar el comportamiento real del token y comprobar los costes de comisión de la red (gas) sin gastar dinero real, lo que facilita enormemente el proceso de hacer pruebas o correcciones si fuera necesario.
  
* Capa de Mercado: Para darle un valor comercial al token y permitir que los usuarios lo intercambien sin depender de un servidor centralizado o un backend propio, configuré una Pool de Liquidez en Uniswap. La estructura de este mercado se definió bajo los siguientes parámetros reales:
  * Par de intercambio: ETH / SPV
  * Comisión de la red: 0.05%
  * Tipo de rango: Rango Completo (configurado así para garantizar que el token siempre se pueda intercambiar, independientemente de la volatilidad o de si el precio sube o baja).
    
  * Precio Inicial: Establecido en una relación donde 1 ETH equivale a 1000 SPV, lo que asigna un valor base mayor al Ethereum sobre nuestra moneda.
