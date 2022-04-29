Algoritmo "Mega Sena"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius
// Descrição   : Validar numeros da mega
// Autor(a)    : Mateus Camargo
// Data atual  : 14/04/2022
Var
// Seção de Declarações das variáveis 
   numeros_certos : vetor[1..6] de inteiro
   matriz_apostas : vetor[1..6, 1..100] de inteiro
   contador : inteiro
   num_certo: inteiro

   contador_apostas : inteiro
   terminar : logico
   num_aposta : inteiro
   
   contador_coluna : inteiro
   
   linha : inteiro
   coluna : inteiro
   
   num_certos : inteiro
   total_acertos : inteiro
   
   acerto : caractere
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Digite resultado da Mega-sena: ")
   para contador de 1 ate 6 passo 1 faca
      escreva("Número",contador,": ")
      leia(num_certo)
      numeros_certos[contador] <- num_certo
   fimpara
   
   limpatela()
   
   contador_apostas <- 0
   enquanto (terminar = Falso) faca
      limpatela()

      escreval("Cadastrar apostas da Mega-sena: ")
      contador_apostas <- contador_apostas + 1
      para contador_coluna de 1 ate 6 passo 1 faca
         escreva("Número",contador_coluna,": ")
         leia(num_aposta)
         matriz_apostas[contador_apostas, contador_coluna] <- num_aposta
      fimpara

      escreva("Terminar(V/F): ")
      leia(terminar)
   fimenquanto

   limpatela()

   escreva("Resultado: ")
   para contador de 1 ate 6 passo 1 faca
      escreva(numeros_certos[contador], " ")
   fimpara
   
   escreval("")
   escreval("----------------------------------")

   para linha de 1 ate contador_apostas passo 1 faca
      total_acertos <- 0
      escreval("Aposta",linha,":")
      para coluna de 1 ate 6 passo 1 faca

         acerto <- "X"
         para num_certos de 1 ate 6 passo 1 faca
            se(matriz_apostas[linha,coluna] = numeros_certos[num_certos]) entao
               total_acertos <- total_acertos + 1
               acerto <- "OK"
            fimse
         fimpara

         escreva(matriz_apostas[linha,coluna], " ", acerto, " ")

      fimpara
      
      escreval("")
      
      escreva("Acertou: ",total_acertos)
      escreval("")
      escreval("----------------------------------")
   fimpara

Fimalgoritmo
