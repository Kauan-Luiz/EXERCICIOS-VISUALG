Algoritmo "AnalisadorDeValores"


Var

   N, C, SOMA, divisiveis, pares, somapar, numero_nulo : inteiro
   MEDIA : real

Inicio
   N <-  0
   para C <- 1 ate 5 faca
      escreval ("------------------------------")
      escreval ("informe um numero:")
      leia (N)
      SOMA <- SOMA + N
      MEDIA <- SOMA / 5

      se (N%5=0) ENTAO
         divisiveis <- divisiveis + 1
      FIMSE

      se (N%2=0)entao
         somapar <- somapar + N
      
         pares <- pares + 1
      fimse
      
      se (N=0) entao
      numero_nulo <- numero_nulo + 1
      fimse

   fimpara
   limpatela
   
   escreval ("------------------------------")
   escreval ("a soma dos valores é de:", SOMA)
   escreval ("a media dos valores é de:", MEDIA)
   escreval ("numeros divisiveis por 5:", divisiveis)
   escreval ("numeros pares:", pares)
   escreval ("soma dos numeros pares:",  somapar)
   escreval ("quantidade de numeros nulos:", numero_nulo)
   escreval ("------------------------------")


Fimalgoritmo