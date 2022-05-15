Algoritmo "Aluno Aprovado ou reprovado"
// Autor(a)    : Mateus Camargo
// Data atual  : 14/5/2022
Var
// Seção de Declarações das variáveis 
    notas: vetor [1..2] de real
    qtd_notas: inteiro
    peso: real
    contador: inteiro

funcao calcular_media : caractere
var
    contador: inteiro
    soma: real
    resultado: caractere
inicio
    soma <- 0
    para contador de 1 ate qtd_notas passo 1 faca
        soma <- soma + notas[contador]
    fimpara

    se (soma/qtd_notas) > peso entao
        resultado <- "APROVADO!!"
    senao
        resultado <- "REPROVADO!!"
    fimse
        
    retorne resultado
fimfuncao

Inicio
    qtd_notas <- 2
    peso <- 6.0
    
    escreval("Digite as notas do aluno ")
    para contador de 1 ate qtd_notas passo 1 faca
        escreva("Nota",contador,": ")
        leia(notas[contador])
    fimpara
    
    escreval("Aluno foi ", calcular_media())


Fimalgoritmo