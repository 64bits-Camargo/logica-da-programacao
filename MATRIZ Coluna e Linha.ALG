Algoritmo "Coluna ou Linha - Soma"
// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Vinicius Colombo Sonda 
// Descrição   : Soma linha ou coluna desejada
// Autor(a)    : Mateus Camargo
// Data atual  : 16/04/2022
Var
// Seção de Declarações das variáveis 
   matriz_numeros : vetor[1..5, 1..5] de inteiro
   valor : inteiro
   
   linha : inteiro
   coluna : inteiro
   
   somar : caractere
   n : inteiro
   
   linha_soma: inteiro
   coluna_soma: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         valor <- randi(10)
         matriz_numeros[linha, coluna] <- valor
      fimpara
   fimpara
   
   escreval("O que você deseja somar Coluna(c) ou Linha(l)? ")
   leia(somar)
   
   se(somar = "l") entao
      escreval("Qual linha? ")
      leia(n)
   senao
      escreval("Qual coluna? ")
      leia(n)
   fimse
   
   linha_soma <- 0
   coluna_soma <- 0

   para linha de 1 ate 5 passo 1 faca
      para coluna de 1 ate 5 passo 1 faca
         se(linha = n) e (somar = "l") entao
            linha_soma <- linha_soma + matriz_numeros[linha, coluna]
         fimse
         
         se(coluna = n) e (somar = "c") entao
            coluna_soma <- coluna_soma + matriz_numeros[linha, coluna]
         fimse
         
         escreva(matriz_numeros[linha, coluna])
      fimpara
      
      escreval("")
   fimpara

   escreval("")
   se(somar = "l") entao
      escreval("Soma linha", n,": ",linha_soma)
   senao
      escreval("Soma coluna", n,": ",coluna_soma)
   fimse

Fimalgoritmo