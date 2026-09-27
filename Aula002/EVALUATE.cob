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
           EVALUATE TRUE
               WHEN IDADE < 12 
                   DISPLAY " VOCE EH UMA CRIANCA "
               WHEN IDADE < 18  
                   DISPLAY " VOCE EH UM ADOLECENTE "
               WHEN IDADE < 60 
                   DISPLAY " VOCE EH UM ADULTO "
               WHEN IDADE > 60
                   DISPLAY " VOCE E UM IDOSO " 
           END-EVALUATE.        
       ELSE
           DISPLAY " VOCE DIGITOU ALGUM DADO ERRADO! ".     
       END IF.
                 
       STOP RUN. *> termina o programa.