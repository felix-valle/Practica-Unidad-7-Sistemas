#  Proyecto: Creación y Despliegue de Sopas_token (SPV)

¡Hola! En este repositorio comparto todo el proceso que seguí para crear mi propia criptomoneda desde cero, desplegarla en una red de pruebas real de Ethereum y ponerla en el mercado. 

Hice todo el desarrollo de forma nativa en la Web3 utilizando la red de pruebas **Ethereum Sepolia Testnet**.

---

##  Herramientas que vas a necesitar (Requisitos)
Para replicar lo que hice o trabajar con este proyecto, no necesitas instalar servidores locales ni programas pesados en tu ordenador. Todo se gestiona directamente desde el navegador web con las siguientes herramientas:
* **MetaMask:** La extensión de navegador que utilicé para gestionar mi billetera virtual, recibir fondos y firmar las transacciones de la blockchain.
* **Remix IDE:** El entorno de desarrollo web donde importé, compilé y desplegué el código del contrato inteligente.
* **Uniswap Interface:** La plataforma de intercambio descentralizada que usé al final para crear el mercado y darle un valor real a la moneda.

---

##  Cómo lo puse en marcha (Pasos para el Despliegue)
Si quieres ver cómo logré lanzar el token, el proceso paso a paso fue el siguiente:

1. **Configurar la Wallet:** Instalé MetaMask en mi navegador y creé un monedero nuevo (para esta prueba configuré la contraseña `Mitoken1234`). Fui a la sección de configuración de redes, activé la opción "Mostrar redes de prueba" y seleccioné **Sepolia**.
2. **Conseguir saldo para el Gas:** Como en la blockchain cada acción requiere pagar una comisión de red (gas), copié la dirección pública de mi wallet y fui al Faucet de Google para Sepolia. Ahí pegué mi dirección y recibí una pequeña cantidad de Sepolia ETH gratuitos para las pruebas.
3. **Crear el Contrato:** Utilicé la herramienta de OpenZeppelin bajo el estándar **ERC20**. Configuré mi token con el nombre `Sopas_token` y la abreviatura `SPV`, y le puse un límite de suministro de un millón de monedas. Después, hice clic en la opción "Open in Remix".
4. **Compilar y Lanzar:** Una vez que se abrió Remix con mi código, fui a la pestaña `Solidity Compiler` y pulsé el botón azul para compilarlo. Luego, en la pestaña `Deploy & Run`, cambié el entorno (Environment) a **Injected Provider - MetaMask**, conecté mi billetera y le di a desplegar, confirmando el pago del gas en la ventana emergente que me abrió MetaMask.

---

##  Datos Clave del Proyecto
Aquí tienes la información fija y real que compone mi criptomoneda desplegada:

* **Red Blockchain:** Ethereum Sepolia Testnet
* **Nombre de la Moneda:** Sopas_token
* **Símbolo / Abreviatura:** SPV
* **Suministro total:** 1.000.000 de tokens
* **Dirección del Contrato:** `0xd9145CCE52D386f254917e481eB44e9943F39138`

---

##  Documentación Adicional

* [ Ver la Guía de Arquitectura del Proyecto](./ARCHITECTURE.md) 
* [ Ver la Documentación de la API del Contrato](./CONTRACT_API.md)
