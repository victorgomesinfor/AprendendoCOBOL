       IDENTIFICATION DIVISION.
       PROGRAM-ID. PEQUENOCALCULO. *> identificacao do programa.
       DATA DIVISION. *> onde declaramos os dados e variaveis.
       WORKING-STORAGE SECTION.
       01 ANO_NASCIMENTO        PIC 9(4).*> variavel ano do nascimento.
       01 ANO_ATUAL             PIC 9(4).*> variavel para o ano atual.
       01 IDADE                 PIC 9(2).*> variavel idade.

       PROCEDURE DIVISION. *> onde colocamos as instrucoes.
       DISPLAY "Digite o ano do seu nascimento: ". 
       *> mostra o texto na tela.
       ACCEPT ANO_NASCIMENTO. *> pega o input do usuario e guarda na variavel ANO.
       DISPLAY "Digite o ano ATUAl ". 
       *> mostra o texto na tela.
       ACCEPT ANO_ATUAL. *> pega o input do usuario e guarda na variavel ANO.

       *> AQUI FOI USANDO ESTRUTURA DE IF ANINHADO.
       IF  ANO_NASCIMENTO >= 1916 
           AND ANO_NASCIMENTO <= ANO_ATUAL
           AND ANO_ATUAL >= ANO_NASCIMENTO
           AND ANO_ATUAL <= 2026
           *> SE AS CONDICOES ACIMA FOREM ATENDIDAS EXECUTA O COMPUTE
      
           COMPUTE 
           IDADE = ANO_ATUAL - ANO_NASCIMENTO.
            DISPLAY " VOCE TEM APROXIMADAMENTE " IDADE " ANOS. ". 
           *> mostra texto na tela.      
           IF IDADE >= 18 *>estrutura de condicao, se maior ou igual a 18.
           DISPLAY " Voce ja é maior de idade. ".
           *>Mostra texto e variavel na tela.
           ELSE *> senao atender o primeiro requisito executa essa parte;
           DISPLAY " Voce é menor de idade. ".
           *>Mostra texto e variavel na tela.
           END IF.*> Fim da estrutura condicional.    
       ELSE
           DISPLAY " VOCE DIGITOU ALGUM DADO ERRADO! ".     
       END IF.
                 
       STOP RUN. *> termina o programa.