Algoritmo "fibonnaci"
// Descrição   : Fibonnaci
// Autor(a)    : Mateus Camargo
// Data atual  : 19/5/2022
Var
    contador: inteiro
    n_termo: inteiro
    
funcao fibonnaci(numero: inteiro) : inteiro
var
    resultado: inteiro
inicio

    escolha(numero)
        caso 1
            resultado <- 0
        caso 2
            resultado <- 1
        outrocaso
            resultado <- fibonnaci(numero - 1) + fibonnaci(numero - 2)
    fimescolha
    
    retorne resultado
fimfuncao
Inicio
    escreval("--- Fibonnaci: ")

    escreva("Quantidade de termos: ")
    leia(n_termo)

    para contador de 1 ate n_termo passo 1 faca
        escreval(fibonnaci(contador))
    fimpara

Fimalgoritmo