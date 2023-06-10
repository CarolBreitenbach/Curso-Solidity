 // SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
 
 contract Venda{
    string public vendedor;
    uint256 public bonus;


    function setVendedor(string memory _vendedor) public {
        vendedor = _vendedor;
    }

    function setBonus(uint256  _bonus) public {
        bonus = _bonus;
    }


    function valor(uint256  _valorVenda) public view returns (uint256 ) {
        return _valorVenda * bonus;
    }

  //0xbd02d648e06922fbfb192f6385ad67b9c1dc05ed

 }
