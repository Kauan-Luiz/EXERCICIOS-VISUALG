Algoritmo "p2"

tipo Tpacientes = registro
   nome : caracter
   idade : inteiro
   queixa : caracter
   prioridade : inteiro
fimregistro


Var
   NivelEmergencia : vetor [1..20] de caracter
   paciente : vetor [1..20] de Tpacientes
   opcao, idade, cont: inteiro



procedimento InserirPacientes()  //Procedimento com a função de inserir
                                 //cadastras pacientes em um vetor
var

   i, OpcaoPaciente : inteiro


inicio

   idade <- 0
   para i de 1 ate 20 faça
      limpatela
      escreval("Paciente N", i)
      escreval("---------------")

      escreval("Qual o nome do paciente?")
      leia (paciente[i].nome)
      escreval("")

      escreval("Qual a idade do paciente?")
      leia (paciente[i].idade)
      escreval("")


      se paciente[i].idade > idade entao
         idade <- paciente[i].idade
         cont <- i
      fimse


      escreval("Qual a queixa do paciente?")
      leia (paciente[i].queixa)
      escreval("")

      escreval("Qual a emergencia do atendimento?")
      escreval("1 - Leve")
      escreval("2 - Medio")
      escreval("3 - Grave")

      leia (paciente[i].prioridade)

      se (paciente[i].prioridade=1) entao //A variavell NivelEmergencia foi criada
                                          //para transformar os numeros da variavel
         NivelEmergencia[i] <- "Leve"     //em um caracter
      fimse
      se (paciente[i].prioridade=2) entao
         NivelEmergencia[i] <- "Medio"
      fimse
      se (paciente[i].prioridade=3) entao
         NivelEmergencia[i] <- "Grave"
      fimse





      escreval("")

      escreval("Deseja inserir mais um paciente?")
      escreval("1 - continuar")
      escreval("0 - sair")
      leia(OpcaoPaciente)

      se (OpcaoPaciente=0) entao
         limpatela
         interrompa

      fimse



      limpatela
   fimpara

fimprocedimento




procedimento FilaPacientes()     //procedimento com a funcão de listar os
var                              //pacientes da maior prioridade para o menor
   i : inteiro

inicio

   LIMPATELA
   
   para i de 1 ate 2 faça
    se (idade=idade)entao
         escreval("--MAIOR PRIORIDADE DE ATENDIMENTO!!!--")   //a lista ira mostrar por ordem de chegada
         escreval("")                                         //mas o paciente com maior prioridade ficara em primeiro.
         escreval("NOME:", paciente[cont].nome)
         escreval("")
         escreval("IDADE:", paciente[cont].idade)
         escreval("")
         escreval("QUEIXA:", paciente[cont].queixa)
         escreval("")
         escreval("PRIORIDADE:", paciente[cont].prioridade,"-", NivelEmergencia[i])
         escreval("")
         escreval("-------------------------")
      fimse
   fimpara
   
   
    escreval("cadastros por ordem de chegada")
   para i de 1 ate 20 faca
      se (paciente[i].prioridade=3)entao
         escreval("-------------------------")
         escreval("")
         escreval("NOME:", paciente[i].nome)
         escreval("")
         escreval("IDADE:", paciente[i].idade)
         escreval("")
         escreval("QUEIXA:", paciente[i].queixa)
         escreval("")
         escreval("PRIORIDADE:", paciente[i].prioridade,"-", NivelEmergencia[i])
         escreval("")
         escreval("-------------------------")
      fimse
   fimpara


   para i de 1 ate 20 faca
      se (paciente[i].prioridade=2)entao
         escreval("-------------------------")
         escreval("")
         escreval("NOME:", paciente[i].nome)
         escreval("")
         escreval("IDADE:", paciente[i].idade)
         escreval("")
         escreval("QUEIXA:", paciente[i].queixa)
         escreval("")
         escreval("PRIORIDADE:", paciente[i].prioridade,"-", NivelEmergencia[i])
         escreval("")
         escreval("-------------------------")
      fimse
   fimpara

   para i de 1 ate 20 faca
      se (paciente[i].prioridade=1)entao
         escreval("-------------------------")
         escreval("")
         escreval("NOME:", paciente[i].nome)
         escreval("")
         escreval("IDADE:", paciente[i].idade)
         escreval("")
         escreval("QUEIXA:", paciente[i].queixa)
         escreval("")
         escreval("PRIORIDADE:", paciente[i].prioridade,"-", NivelEmergencia[i])
         escreval("")
         escreval("-------------------------")
      fimse
   fimpara


fimprocedimento


procedimento ChamadaDePaciente()         //Procedimento com a função para chamar
var                                      //um paciente da lista e exclui-lo da fila.
   i, OpcaoChamarPaciente : inteiro
   nome : caracter

inicio
   limpatela
   para i de 1 ate 20 faça



      escreval("Qual o Nome do paciente que deseja buscar?")
      leia(nome)
      limpatela

      se (nome=paciente[i].nome) entao
         escreval("---------------------------------------------------")
         escreval("Paciente ", paciente[i].nome," Encontrado, JA FOI ACIONADO!")
         escreval("---------------------------------------------------")
         paciente[i].nome <- ""
         paciente[i].idade <- 0
         paciente[i].queixa <- ""
         paciente[i].prioridade <- 0     //apaga os dados do paciente.
         NivelEmergencia[i] <- ""


      senao
         escreval("------------------------")
         escreval("paciente não encontrado!")
         escreval("------------------------")
      fimse

      escreval("Deseja buscar mais um paciente?")
      escreval("1 - continuar")
      escreval("0 - sair")
      leia(OpcaoChamarPaciente)

      se (OpcaoChamarPaciente =0) entao
         limpatela
         interrompa
      senao
         limpatela
      fimse
   fimpara



fimprocedimento




Inicio
   escreval("---------------------------------")
   escreval("SISTEMA DE ATENDIMENTO HOSPITALAR")
   escreval("---------------------------------")


   repita
      escreval("1 - Inserir pacientes na fila")

      escreval("2 - Ver a fila de atendimentos")

      escreval("3 - chamada de paciente")

      escreval("4 - sair")
      leia(opcao)


      se (opcao=1) entao
         InserirPacientes()
      fimse


      se (opcao=2) entao
         FilaPacientes()
      fimse


      se (opcao=3) entao
         ChamadaDePaciente()
      fimse




   ate(opcao=4)


Fimalgoritmo
