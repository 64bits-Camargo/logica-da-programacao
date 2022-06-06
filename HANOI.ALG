Algoritmo "Hanoi"
// 
//  
// Descrição   : Resolver Hanoi
// Autor(a)    : Mateus Camargo
// Data atual  : 2/6/2022
Var
// Seção de Declarações das variáveis 
    movimentos : inteiro
    contador: inteiro

procedimento hanoi(n, col_a, col_b, col_c : inteiro)
inicio
    escolha(n)
        caso 1
            escreval("Mover de ", col_a, " para ", col_b)
        outrocaso
            hanoi(n-1, col_a, col_c, col_b)
            contador <- contador + 1
            escreval("Mover de ", col_a, " para ", col_b)
            hanoi(n-1, col_c, col_b, col_a)
            contador <- contador + 1
    fimescolha
fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    contador <- 1
    escreva("Digite a quantidade de discos: ")
    leia(movimentos)
    hanoi(movimentos, 1, 2, 3)
    escreva("Quantidade de jogadas: ", contador)
Fimalgoritmo