Algoritmo "SOMA DAS MATRIZES"
// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Vinicius Colombo Sonda
// Descrição   : Soma duas matriz
// Autor(a)    : Mateus Camargo
// Data atual  : 28/04/2022
Var
// Seção de Declarações das variáveis
   matriz_numeros_1 : vetor[1..5, 1..5] de inteiro
   matriz_numeros_2 : vetor[1..5, 1..5] de inteiro
   
   valor : inteiro

   linha : inteiro
   coluna : inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("MATRIZ 1")
   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         valor <- randi(10)
         matriz_numeros_1[linha, coluna] <- valor
      fimpara
   fimpara


   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         escreva(matriz_numeros_1[linha, coluna])
      fimpara
      escreval("")
   fimpara

   escreval("")
   escreval("")
   
   
   escreval("MATRIZ 2")
   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         valor <- randi(10)
         matriz_numeros_2[linha, coluna] <- valor
      fimpara
   fimpara


   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         escreva(matriz_numeros_2[linha, coluna])
      fimpara
      escreval("")
   fimpara


   escreval("")
   escreval("")
   
   escreval("SOMA DAS MATRIZES")
   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         escreva(matriz_numeros_1[linha, coluna] + matriz_numeros_2[linha, coluna],"|")
      fimpara
      escreval("")
   fimpara
   
Fimalgoritmo