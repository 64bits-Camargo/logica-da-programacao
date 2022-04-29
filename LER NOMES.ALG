Algoritmo "Ler nomes"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius
// Descrição   : ler 5 nomes e os verificar se está na lista inicial
// Autor(a)    : Mateus Camargo
// Data atual  : 14/04/2022
Var
// Seção de Declarações das variáveis 
   nomes : vetor [1..5] de caractere
   contador : inteiro
   
   nome : caractere
   esta_lista : logico
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   para contador de 1 ate 5 passo 1 faca
        escreva("Nome: ")
        leia(nomes[contador])
   fimpara

   limpatela()
   repita
         esta_lista <- Falso
         
         escreva("Nome: ")
         leia(nome)
         
         para contador de 1 ate 5 passo 1 faca
              se(nome = nomes[contador]) entao
                      escreval(nome," está na listagem inicial.")
                      esta_lista <- Verdadeiro
              fimse
         fimpara
   
         se (esta_lista = Falso) e (nome <> "sair") entao
            escreval(nome," não está listagem.")
         fimse
         
   ate (nome = "sair")

Fimalgoritmo