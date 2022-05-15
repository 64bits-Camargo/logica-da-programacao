Algoritmo "Mega Sena"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius
// Descrição   : Validar numeros da mega
// Autor(a)    : Mateus Camargo
// Data atual  : 14/04/2022
Var
// Seção de Declarações das variáveis 
   vetor_gabarito: vetor[1..6] de inteiro
   vetor_apostas: vetor[1..6, 1..100] de inteiro
   
   contador_apostas: inteiro

   terminar: logico
procedimento criar_gabarito
var
    contador: inteiro
inicio
    escreval("Digite resultado da Mega-sena: ")
    para contador de 1 ate 6 passo 1 faca
        escreva("Número",contador,": ")
        leia(vetor_gabarito[contador])
    fimpara
fimprocedimento

procedimento criar_aposta
var
    contador_coluna: inteiro
inicio
    escreval("Cadastrar apostas da Mega-sena: ")
    contador_apostas <- contador_apostas + 1
    para contador_coluna de 1 ate 6 passo 1 faca
        escreva("Número",contador_coluna,": ")
        leia(vetor_apostas[contador_apostas, contador_coluna])
    fimpara
fimprocedimento


procedimento mostrar_gabaratito
var
    contador: inteiro
inicio
    escreva("Resultado: ")
    para contador de 1 ate 6 passo 1 faca
        escreva(vetor_gabarito[contador], " ")
    fimpara

    escreval("")
    escreval("----------------------------------")
fimprocedimento


procedimento corrigir_apostas
var
    linha: inteiro
    coluna: inteiro
    
    num_certos: inteiro
    
    total_acertos: inteiro
    acerto: caractere
inicio
    para linha de 1 ate contador_apostas passo 1 faca
        total_acertos <- 0
        escreval("Aposta",linha,":")

        para coluna de 1 ate 6 passo 1 faca
            acerto <- "X"

            para num_certos de 1 ate 6 passo 1 faca
                se(vetor_apostas[linha,coluna] = vetor_gabarito[num_certos]) entao
                    total_acertos <- total_acertos + 1
                    acerto <- "OK"
                fimse
            fimpara

            escreva(vetor_apostas[linha,coluna], " ", acerto, " ")

        fimpara

        escreval("")

        escreva("Acertou: ",total_acertos)
        escreval("")
        escreval("----------------------------------")
   fimpara
fimprocedimento

Inicio
    terminar <- Falso
    criar_gabarito()

    limpatela()

    contador_apostas <- 0
    enquanto (terminar = Falso) faca
        limpatela()

        criar_aposta()

        escreva("Terminar(V/F): ")
        leia(terminar)
    fimenquanto

    limpatela()

    mostrar_gabaratito()
    corrigir_apostas()


Fimalgoritmo
