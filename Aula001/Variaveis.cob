       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAUDACAO. *> identificacao do programa.
       DATA DIVISION. *> onde declaramos os dados e variaveis.
       WORKING-STORAGE SECTION.
       01 NOME     PIC A(20). *> variavel nome.
       01 CIDADE   PIC A(40). *> variavel cidade.

       PROCEDURE DIVISION. *> onde colocamos as instrucoes.
       DISPLAY"Digite seu nome: ". *> mostra o texto na tela.
       ACCEPT NOME. *> pega o input do usuario e guarda na variavel.
       DISPLAY"Qual cidade voce mora? ". *> mostra texto na tela.
       ACCEPT CIDADE. *> pega o input do usuario e guarda na variavel.
       DISPLAY "Ola! " NOME "de(a/o) " CIDADE. *> mostra texto e variavel
       STOP RUN. *> termina o programa.