       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUMEROS. *> identificacao do programa.
       DATA DIVISION. *> onde declaramos os dados e variaveis.
       WORKING-STORAGE SECTION.
       01 NOME     PIC A(20). *> variavel nome.
       01 IDADE   PIC 9(2). *> variavel idade.

       PROCEDURE DIVISION. *> onde colocamos as instrucoes.
       DISPLAY "Digite seu nome: ". *> mostra o texto na tela.
       ACCEPT NOME. *> pega o input do usuario e guarda na variavel.
       DISPLAY "Digite sua idade: ". *> mostra texto na tela.
       ACCEPT IDADE. *> pega o input do usuario e guarda na variavel.
       IF IDADE >= 18 *>estrutura de condicao, se maior ou igual a 18.
           DISPLAY "Ola! " NOME " Voce ja é maior de idade. ".
           *>Mostra texto e variavel na tela.
       ELSE *> senao atender o primeiro requisito executa essa parte;
           DISPLAY "Ola! " NOME " Voce é menor de idade. ".
           *>Mostra texto e variavel na tela.
       END IF.*> Fim da estrutura condicional.
      
       STOP RUN. *> termina o programa.