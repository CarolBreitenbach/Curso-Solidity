 // SPDX-License-Identifier: MIT
pragma solidity 0.8.20; 
contract Aluguel{

    string public locador;
    string public locatario;
    uint256[36] public valorAluguel;


    constructor(string memory _locador, string memory _locatario, uint256 _valorAluguel){
        locador = _locador;
        locatario = _locatario;
        for (uint i = 0; i < 36; i++) {
            valorAluguel[i] = _valorAluguel;
        }
    }

    function setLocador(string memory _locador) public {
        locador = _locador;
    }

   function setLocatario(string memory _locatario) public {
        locatario = _locatario;
    }


  function vlrAluguel(uint256 mes) public view returns (uint256) {      
        return valorAluguel[mes-1];
    }

   function NomePartes() public view returns (string memory, string memory) {
        return (locador,locatario);
    }

   function alterarNomeParte(string memory nvNome, uint256 tipoPessoa) public {
   
        if (tipoPessoa == 1) {
            locador = nvNome;
        } else 
        if (tipoPessoa == 2) {
            locatario = nvNome;
        }
    }

  function reajustaValores(uint256 mesReaj, uint256 aumento) public {  
        for (uint256 i = mesReaj; i < valorAluguel.length; i++) {
            valorAluguel[i] += aumento;

        }
    }
}
//0x627fdbc5a5fdaeed918a4564854fb46fa6314333
