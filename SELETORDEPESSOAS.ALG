Algoritmo "seletorDePessoas"

Var
   genero, menu : caracter
   idade, cor_cabelo, homens, mulheres : INTEIRO

Inicio
   repita
      escreval ("Qual o seu sexo? [M][F]:")
      leia (genero)
      
      escreval ("Qual a sua idade?")
      leia (idade)
      
      escreval("Qual a cor do seu cabelo?")
      escreval("-------------------------")
      escreval ("1 - ruivo")
      escreval ("2 - loiro")
      escreval ("3 - castanho")
      escreval ("4 - preto")
      leia (cor_cabelo)
      
      escreval("Deseja continuar?[S][N]:")
      leia (menu)
      limpatela
      
      
      
      
     se (genero = "M") e (idade > 17) e (cor_cabelo = 3) entao
     homens <- homens + 1
     fimse
     
     se (genero = "F") e (idade > 24) e (idade < 30) e (cor_cabelo = 2) entao
     mulheres <- mulheres + 1
     fimse
     
   ate (menu = "N")
   
   escreval("O total de homens com mais de 18 anos e cabelo castanhos são de:", homens)
   escreval("O total de mulheres com idade entre 25 a 30 anos, cabelos loiros são de:", mulheres)


Fimalgoritmo