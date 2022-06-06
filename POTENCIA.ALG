Algoritmo "Potencia"
// Descrição   : Potencia recursiva
// Autor(a)    : Mateus Camargo
// Data atual  : 19/5/2022
Var
// Seção de Declarações das variáveis 
    base, expoente: inteiro

funcao potencia(base, expoente: inteiro) : inteiro
var
    resultado: inteiro
inicio
    escolha(expoente)
        caso 0
            resultado <- 1
        outrocaso
            resultado <- base * potencia(base, expoente - 1)
    fimescolha
    retorne resultado
fimfuncao
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    escreval("--- Potência: ")

    escreva("base: ")
    leia(base)
    escreva("expoente: ")
    leia(expoente)

    escreval("Resultado: ",potencia(2, 4))

Fimalgoritmo