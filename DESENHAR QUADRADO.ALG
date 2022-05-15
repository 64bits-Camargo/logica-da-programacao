Algoritmo "desenhar quadrado"
// Autor(a)    : Mateus Camargo
// Data atual  : 12/5/2022
var
    base: inteiro

procedimento desenhar_quadrado(base: inteiro)
var
    linha: inteiro
    coluna: inteiro
inicio
    para linha de 1 ate base passo 1 faca
        para coluna de 1 ate base passo 1 faca
            escreva("[]")
        fimpara
        escreval("")
    fimpara
fimprocedimento

Inicio
    escreva("Digite o tamanha da base de um quadrado(max 100): ")
    leia(base)
    desenhar_quadrado(base)
Fimalgoritmo