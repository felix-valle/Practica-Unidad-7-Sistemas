#Esta seccion documenta las funciones principales del contrato inteligente para que un desarollador pueda interactual con el token SPV sin necesidad de reprogramar el contrato

1º Consultas (No hace falta gas para hacerlas)
balanceof("direccion del token") en mi caso Sopas_token: Devuelve la cantidad de SPV que posee una billetera
totalSupply(): COnfirma el limite total del token 1.000.000 SPV
name: Devuelve el nombre del token SPV
symbol: Devuelve la abreviatura del token (SPV)

2º Operaciones (Si requiere gas)

transfer(de, a) Envia tokens directamente a otra direccion de sepolia

approve: autoria a Uniswap a gestionar tus tokens. Es una de los pasos que yo realize ya que es indispensable para crear la pool

allawance: Verifica cuantos tokens tiene permitido gastar un tercero

