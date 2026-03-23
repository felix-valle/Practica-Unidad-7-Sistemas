/// Este es el codigo utilizado para la creacion el contrato, Lo que permite copiarlo y modificarlo facilmente.
// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.5.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts@5.5.0/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts@5.5.0/token/ERC20/extensions/ERC20Permit.sol";

contract Sopas_token is ERC20, ERC20Permit {
    constructor(address recipient)
        ERC20("sopas_token", "SPV")
        ERC20Permit("sopas_token")
    {
        _mint(recipient, 1000000 * 10 ** decimals());
    }
}
