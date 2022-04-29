Algoritmo "Ler numeros"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius
// Descrição   : ler 5 nomes e os verificar se está na lista inicial
// Autor(a)    : Mateus Camargo
// Data atual  : 14/04/2022
Var
// Seção de Declarações das variáveis
   numeros : vetor [0..15] de inteiro
   contador : inteiro
   contador_aux : inteiro
   numero : inteiro
   esta_lista : logico
   soma : inteiro
   tamanho_lista : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   contador <- 0
   tamanho_lista <- 15
   
   enquanto (contador < tamanho_lista) faca
        escreva("Numero: ")
        leia(numero)
        
        esta_lista <- Falso
        para contador_aux de 0 ate tamanho_lista passo 1 faca
             se(numero = numeros[contador_aux]) entao
                       escreval(numeros[contador_aux]," numero já está na lista.")
                       esta_lista <- Verdadeiro
             fimse
        fimpara
        
        se(esta_lista = Falso) entao
                      numeros[contador] <- numero
                      contador <- contador + 1
        fimse
        
   fimenquanto
   
   para contador de 0 ate tamanho_lista passo 1 faca
        soma <- soma + numeros[contador]
   fimpara

   escreva("Soma -> ", soma)
Fimalgoritmo