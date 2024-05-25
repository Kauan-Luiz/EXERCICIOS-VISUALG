Algoritmo "supercontador"


Var

   C, MENU, N, NN : INTEIRO


Inicio


   C <- 1

   REPITA
      escreval (" SUPER CONTADOR")
      escreval ("[1] - DE 1 A 10 ")
      escreval ("[2] - DE 10 A 1 ")
      escreval ("[3] - SAIR")
      leia (MENU)


      se(menu = 1) entao
         LIMPATELA
         N <- 0
         repita
            N <- N + 1
            C <- C + 1
            ESCREVA (N, "...")
         ate (C > 10)
      fimse

      SE(MENU = 2)ENTAO

         C <- 10
         NN <- 10
         REPITA

            ESCREVA (NN, "...")
            NN <- NN -1
            C <- C - 1
         ATE ( C < 0)
      FIMSE


      se (menu = 3) entao
         escreval ("saindo...")
      fimse

   ate (menu = 3)



Fimalgoritmo