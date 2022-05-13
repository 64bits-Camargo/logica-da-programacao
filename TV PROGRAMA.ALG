Algoritmo "TV PROGRAMA"
// Descrição   : Cadastrar emissoras e pesquisar
// Autor(a)    : Mateus Camargo
// Data atual  : 12/5/2022
Var
   vetor_canais: vetor [1..100] de inteiro
   vetor_nome_emissoras: vetor [1..100] de caractere
   index: inteiro

   continuar_programa: logico


procedimento tela_pesquisa_canal
var
    numero_canal: inteiro
    index_canal: inteiro
inicio
    escreval("---------------------------")
    escreval("| Pesquisar canal       |")
    escreval("---------------------------")

    escreva("| Numero canal > ")
    leia(numero_canal)

    escreval("---------------------------")

    index_canal <- buscar_canal(numero_canal)

    escolha (index_canal)
        caso -1
            limpatela()
            escreval("Emissora nao existe!")
        outrocaso
            limpatela()
            escreval("Canal: ", vetor_canais[index_canal])
            escreval("Nome da emissora: ", vetor_nome_emissoras[index_canal])
    fimescolha
fimprocedimento


procedimento tela_cadastrar_canal
var
    nome_emissora: caractere
    numero_canal: inteiro
inicio
    escreval("---------------------------")
    escreval("| Cadastradar canal       |")
    escreval("---------------------------")

    escreva("| Nome Emissora > ")
    leia(nome_emissora)

    escreva("| Numero canal > ")
    leia(numero_canal)

    escreval("---------------------------")
    
    escolha (cadastrar_canal(nome_emissora, numero_canal))
        caso -1
            limpatela()
            escreval("Emissora ja cadastrada!")
        caso 1
            limpatela()
            escreval("Criado com sucesso!")
    fimescolha
fimprocedimento


funcao cadastrar_canal(nome_canal: caractere; numero_canal: inteiro) : inteiro
var
    result: inteiro
inicio
    // retornos
    // -1 canal nao cadastrado
    //  1 canal cadastrado
    result <- -1
    
    escolha (buscar_canal(numero_canal))
        caso -1
            vetor_canais[index] <- numero_canal
            vetor_nome_emissoras[index] <- nome_canal
            result <- 1
            index <- index + 1
        outrocaso
            result <- -1
    fimescolha
    
    retorne result
fimfuncao


funcao buscar_canal(numero_canal: inteiro) : inteiro
var
    contador: inteiro
    achou_canal: inteiro
inicio
    // retornos
    // -1 canal nao existe
    //  INDEX do canal cadastrado
    
    contador <- 1
    achou_canal <- -1

    para contador de contador ate 100 passo 1 faca

        se vetor_canais[contador] = numero_canal entao
            achou_canal <- contador
        fimse

    fimpara

    retorne achou_canal
fimfuncao


funcao menu_principal : inteiro
var
    resposta_menu: inteiro
inicio
    escreval("---------------------------")
    escreval("| 1) Cadastradar canal    |")
    escreval("| 2) Pesquisar canal      |")
    escreval("| 3) Sair                 |")
    escreval("---------------------------")
    escreva("> ")
    leia(resposta_menu)
    retorne resposta_menu
fimfuncao


Inicio
    // MAIN
    index <- 1
    
    continuar_programa <- VERDADEIRO
    enquanto continuar_programa faca

        escolha (menu_principal())
            caso 1
                limpatela()
                tela_cadastrar_canal()
            caso 2
                limpatela()
                tela_pesquisa_canal()
            caso 3
                continuar_programa <- FALSO
        fimescolha

    fimenquanto
Fimalgoritmo