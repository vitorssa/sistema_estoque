Algoritmo "ESTOQUE 6.3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : CAUAN CORREIA, JOÃO LIMA E VITOR ROSA
// Data atual  : 27/10/2023
TIPO
   ESTOQUE = REGISTRO
      //REGISTRO DOS PRODUTOS
      FORNECEDOR: CARACTERE
      LOCAL: CARACTERE
      NOME: CARACTERE
      PRODUTO: CARACTERE
      CODIGO: INTEIRO
      QUANTIDADE: INTEIRO
      FABRICACAO: REAL
      VAlOR: REAL
      //RESGISTRO DOS FUNCIONARIOS
      CARGO: CARACTERE
      FUNCIONARIO: CARACTERE
      LOCALFUNCIONARIO: CARACTERE
      CPF: INTEIRO
      FILHOS: INTEIRO
      RG: INTEIRO
      TELEFONE: INTEIRO
      SALARIO: REAL
   FIMREGISTRO

Var
   NOMEFUNCIONARIO, CARGO, SAIR, MENU, CADASTRO, PESQUISA2, CLIENTE, PRODUTOSAIDA, SAIDACOMPRAR, N, NOME: CARACTERE
   HORAS2, TOTALITENS, QUANTIDADESAIDA, PEDIDO, RESPOSTA, PESQUISA, TOTALVEZES, TOTALVEZES2, TOTALVEZES3, TOTALVEZES4, ESC, I, J,MERCADORIA, TOTALMERCADORIA, TOTALRECEBIMENTO, HORAS, PEDIDO2, PEDIDO3, PEDIDO4, PEDIDO5, FUNCIONARIO2: INTEIRO
   TOTAL, MENSAL, DIARIA, ANUAL, MENSAL30, ENTRADAANUAL, ENTRADAMENSAL, ENTRADASEMANAL, ENTRADADIARIA, TOTALVENDA, RESULTADO,HORASEXTRA,HORAEXTRA2: REAL
   RESULTADOSALARIO, SALARIOLIQUIDO, IR, IR2, IRDESCONTO, agua,luz,salario,impostos,pallets,totaldesp,lucro1: REAL
   PRODUCAO: VETOR[1..100] DE ESTOQUE
   COLABORADOR: VETOR[1..15] DE ESTOQUE
   //PROCEDIMENTO PARA VOLTAR AO MENU
PROCEDIMENTO VOLTARMENU()
INICIO
   ESCREVAL()
   ESCREVAL("VOLTAR PARA O MENU ANTERIOR? [S/N] ")
   LEIA(MENU)
   LIMPATELA
FIMPROCEDIMENTO

//MENU PARA A PESQUISA DOS PRODUTOS
PROCEDIMENTO PESQUISA()
INICIO
   ESCREVAL("---------------------------")
   ESCREVAL("   ENTRADA DE MERCADORIA   ")
   ESCREVAL("---------------------------")
   ESCREVAL("1 PARA PESQUISAR POR CÓDIGO")
   ESCREVAL("2 PARA PESQUISAR POR NOME")
   LEIA(ESC)
FIMPROCEDIMENTO

//RECEBENDO O VALOR DA ENTRADA DA MERCADORIA
PROCEDIMENTO ENTRADAMERCADORIA()
INICIO
   ESCREVAL()
   ESCREVAL("QUAL É A QUANTIDADE DA MERCADORIA? ")
   LEIA(MERCADORIA)
   ENTRADAANUAL <- MERCADORIA + ENTRADAANUAL
   PRODUCAO.QUANTIDADE[I] <- PRODUCAO.QUANTIDADE[I] + MERCADORIA
   ESCREVAL("ATUALIZANDO...")
   ESCREVAL("PRODUTO ATUALIZADO.")
FIMPROCEDIMENTO

PROCEDIMENTO INSUMO()
INICIO
   ESCREVAL()
   ESCREVAL("REALIZE O CADASTRO DE OUTRO PRODUTO PARA FAZER O RECEBIMENTO.")
   ESCREVAL("OU PESQUISAR OUTRO INSUMO? [S/N] ")
   LEIA(CADASTRO)
   LIMPATELA
FIMPROCEDIMENTO

//CALCULAR A HORA EXTRA
PROCEDIMENTO HORAEXTRA (A, B:REAL):REAL
INICIO
   HORAEXTRA2 <- HORAS2 - HORAS
   RESULTADO <- (A * HORAEXTRA2) + B
   ESCREVAL("O SALÁRIO COM EXTRAS É: ", RESULTADO,".")
FIMPROCEDIMENTO

//SALÁRIO LIQUIDO, IMPOSTO DE RENDA
PROCEDIMENTO LIQUIDO(A: REAL):REAL
INICIO
   //SALÁRIO COM DESCONTO
   SALARIOLIQUIDO <- COLABORADOR.SALARIO[I] - ((A/100) * COLABORADOR.SALARIO[I])
   ESCREVAL("O SALARIO TEVE UM DESCONTO DE ", A," %.")
   ESCREVAL("VALOR FINAL DE R$ ",SALARIOLIQUIDO)
FIMPROCEDIMENTO

//IMPOSTO DE RENDA
PROCEDIMENTO IR3(A:REAL):REAL
INICIO
   //VALOR FINAL DO SLÁRIO COM O DESCONTO
   IR2 <- COLABORADOR.SALARIO[I] - ((A/100) * COLABORADOR.SALARIO[I])
   //DESCONTO
   IRDESCONTO <- ((A/100) * COLABORADOR.SALARIO[I])
   ESCREVAL()
   ESCREVAL("SALÁRIO NO VALOR DE R$ ",COLABORADOR.SALARIO[I])
   ESCREVAL("DESCONTO DE R$ ", IRDESCONTO)
   ESCREVAL("SALÁRIO FINAL R$ ",IR2)
   ESCREVAL()
FIMPROCEDIMENTO

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   PEDIDO4 <- 11
   MENU <- "S"
   SAIR <- "N"
   //PRODUTOS JÁ CADASTRADO NO SISTEMA NA SUA RESPECTIVA POSIÇÃO
   PARA I <- 1 ATE 1 FACA
      PRODUCAO.CODIGO[I] <- 1
      PRODUCAO.NOME[I] <- "NESCAU"
      PRODUCAO.VALOR[I] <- 5,60
      PRODUCAO.LOCAL[I] <- "RUA 1"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "NESTLE"
      PRODUCAO.FABRICACAO[I] <- 20231205
   FIMPARA

   PARA I <- 2 ATE 2 FACA
      PRODUCAO.CODIGO[I] <- 2
      PRODUCAO.NOME[I] <- "CAFÉ MELITA"
      PRODUCAO.VALOR[I] <- 5,00
      PRODUCAO.LOCAL[I] <- "RUA 2"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "MELITA"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 3 ATE 3 FACA
      PRODUCAO.CODIGO[I] <- 3
      PRODUCAO.NOME[I] <- "BANANA"
      PRODUCAO.VALOR[I] <- 1,98
      PRODUCAO.LOCAL[I] <- "RUA 3"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "FRUVELE"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 4 ATE 4 FACA
      PRODUCAO.CODIGO[I] <- 4
      PRODUCAO.NOME[I] <- "LEITE"
      PRODUCAO.VALOR[I] <- 4,65
      PRODUCAO.LOCAL[I] <- "RUA 4"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "ITAMBÉ"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 5 ATE 5 FACA
      PRODUCAO.CODIGO[I] <- 5
      PRODUCAO.NOME[I] <- "GILLETE MAC 3"
      PRODUCAO.VALOR[I] <- 1,65
      PRODUCAO.LOCAL[I] <- "RUA 5"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "GILETTE"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 6 ATE 6 FACA
      PRODUCAO.CODIGO[I] <- 6
      PRODUCAO.NOME[I] <- "DESODORANTE DOVE"
      PRODUCAO.VALOR[I] <- 7,00
      PRODUCAO.LOCAL[I] <- "RUA 6"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "DOVE"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 7 ATE 7 FACA
      PRODUCAO.CODIGO[I] <- 7
      PRODUCAO.NOME[I] <- "SABONETE SENADOR"
      PRODUCAO.VALOR[I] <- 5,00
      PRODUCAO.LOCAL[I] <- "RUA 7"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "SENADOR"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 8 ATE 8 FACA
      PRODUCAO.CODIGO[I] <- 8
      PRODUCAO.NOME[I] <- "MAÇÃ"
      PRODUCAO.VALOR[I] <- 1,39
      PRODUCAO.LOCAL[I] <- "RUA 8"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "FRUVELE"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 9 ATE 9 FACA
      PRODUCAO.CODIGO[I] <- 9
      PRODUCAO.NOME[I] <- "MANTEIGA VIGOR"
      PRODUCAO.VALOR[I] <- 6,39
      PRODUCAO.LOCAL[I] <- "RUA 9"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "VIGOR"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   PARA I <- 10 ATE 10 FACA
      PRODUCAO.CODIGO[I] <- 10
      PRODUCAO.NOME[I] <- "OLEO DE COZINHA "
      PRODUCAO.VALOR[I] <- 4,27
      PRODUCAO.LOCAL[I] <- "RUA 10"
      PRODUCAO.QUANTIDADE[I] <- 100
      PRODUCAO.FORNECEDOR[I] <- "LIZA"
      PRODUCAO.FABRICACAO[I] <- 20221011
   FIMPARA

   //LAÇO PARA CONTROLAR TODO O PROGRAMA
   ENQUANTO SAIR = "N" FACA
      //LAÇO PARA CONTROLAR O MENU
      MENU <- "S"
      ENQUANTO MENU = "S" FACA

         ESCREVAL("--------------------------------")
         ESCREVAL("              MENU              ")
         ESCREVAL("--------------------------------")
         ESCREVAL("[1] TOTAL DA CAPACIDADE"          )
         ESCREVAL("[2] ENTRADA DE MERCADORIA")
         ESCREVAL("[3] CADASTRAR OS PRODUTOS")
         ESCREVAL("[4] VENDA")
         ESCREVAL("[5] DESPESAS")
         ESCREVAL("[6] CADASTRAR OS FUNCIONÁRIOS")
         ESCREVAL("[7] SALÁRIO")
         ESCREVAL("[8] HORA EXTRA")
         ESCREVAL("[9] SALÁRIO LÍQUIDO")
         ESCREVAL("[10] SALÁRIO IRPF")
         ESCREVAL("[11] SAIR DO MENU")
         ESCREVAL("--------------------------------")
         ESCREVAL("O QUE DESEJA FAZER? ")
         LEIA(RESPOSTA)

         SE RESPOSTA = 1 ENTAO
            ESCREVAL("---------------------------------------------")
            ESCREVAL("CAPACIDADE DA PRODUÇÃO DIARIA, MENSAL E ANUAL")
            ESCREVAL("---------------------------------------------")

            //CALCULAR A CAPACIDADE TOTAL
            MENSAL30 <- 10000
            MENSAL <- MENSAL30 + MENSAL30 + MENSAL30 + 3333
            DIARIA <- MENSAL / 30 - 0.1
            MENSAL <- MENSAL
            ANUAL <- (MENSAL * 12)
            ESCREVAL("A CAPACIDADE DA PRODUÇÃO A 30% MENSAL É DE: ",MENSAL30)
            ESCREVAL("A CAPACIDADE TOTAL DA PRODUÇÃO DIARIA É DE: ",DIARIA)
            ESCREVAL("A CAPACIDADE TOTAL DA PRODUÇÃO MENSAL É DE: ",MENSAL)
            ESCREVAL("A CAPACIDADE TOTAL DA PRODUÇÃO ANUAL É DE: ",ANUAL)
            ESCREVAL()
            VOLTARMENU()
         FIMSE

         //ENTRADA DE MERCADORIAS E CADASTRAR ALGUM PRODUTO
         SE RESPOSTA = 2 ENTAO
            CADASTRO <- "S"
            ENQUANTO CADASTRO = "S" FACA
               PESQUISA()
               SE ESC = 1 ENTAO
                  ESCREVAL("QUAL CÓDIGO DO PRODUTO QUE DESEJA PESQUISAR? ")
                  LEIA(PESQUISA)
                  PARA I <- 1 ATE 100 FACA
                     SE PESQUISA = PRODUCAO.CODIGO[I] ENTAO
                        ESCREVAL("PRODUTO ",PRODUCAO.NOME[I])
                        ESCREVAL("VALOR R$ ",PRODUCAO.VALOR[I])
                        ESCREVAL("LOCAL ",PRODUCAO.LOCAL[I])
                        ESCREVAL("FORNECEDOR ",PRODUCAO.FORNECEDOR[I])
                        ESCREVAL("FABRICAÇÃO ",PRODUCAO.FABRICACAO[I])
                        ESCREVAL("QUANTIDADE ", PRODUCAO.QUANTIDADE[I])
                        ENTRADAMERCADORIA()
                     FIMSE
                  FIMPARA
                  INSUMO()
               FIMSE

               SE ESC = 2 ENTAO
                  ESCREVAL("QUAL NOME DO PRODUTO QUE DESEJA PESQUISAR? ")
                  LEIA(PESQUISA2)
                  PARA I <- 1 ATE 100 FACA
                     SE PESQUISA2 = PRODUCAO.NOME[I] ENTAO
                        ESCREVAL("CÓDIGO ",PRODUCAO.CODIGO[I])
                        ESCREVAL("VALOR R$ ",PRODUCAO.VALOR[I])
                        ESCREVAL("LOCAL ",PRODUCAO.LOCAL[I])
                        ESCREVAL("FORNECEDOR ",PRODUCAO.FORNECEDOR[I])
                        ESCREVAL("FABRICAÇÃO ",PRODUCAO.FABRICACAO[I])
                        ESCREVAL("QUANTIDADE ", PRODUCAO.QUANTIDADE[I])
                        ENTRADAMERCADORIA()
                     FIMSE
                  FIMPARA
                  INSUMO()
               FIMSE
            FIMENQUANTO
         FIMSE

         SE RESPOSTA  = 3 ENTAO
            //CADASTRAR OS PRODUTOS QUE NÃO ESTÁ PRESENTE NO ESTOQUE
            ESCREVAL("----------------------")
            ESCREVAL("       CADASTRO       ")
            ESCREVAL("----------------------")
            ESCREVAL("QUANTOS ITENS PARA SER CADASTRADOS? ")
            LEIA(PEDIDO2)
            //TROCA DE VALORES PARA O CADASTRO DOS PRODUTOS NA POSIÇÃO CERTA
            PEDIDO3 <- 10 + PEDIDO2
            PARA I <- 11 ATE PEDIDO3 FACA
               ESCREVAL("NOME DO PRODUTO: ")
               LEIA(PRODUCAO.NOME[I])
               ESCREVAL("VALOR DO PRODUTO: ")
               LEIA(PRODUCAO.VALOR[I])
               ESCREVAL("CÓDIGO DO PRODUTO: ")
               LEIA(PRODUCAO.CODIGO[I])
               ESCREVAL("LOCAL DO PRODUTO: ")
               LEIA(PRODUCAO.LOCAL[I])
               ESCREVAL("QUANTIDADE DO PRODUTO: ")
               LEIA(PRODUCAO.QUANTIDADE[I])
               //TOTAL DE INSUMOS, VALOR ATUAL COM A ENTRADA
               ENTRADAANUAL <- ENTRADAANUAL + PRODUCAO.QUANTIDADE[I]
               ESCREVAL("FORNECEDOR DO PRODUTO: ")
               LEIA(PRODUCAO.FORNECEDOR[I])
               ESCREVAL("FABRICAÇÃO DO PRODUTO: ")
               LEIA(PRODUCAO.FABRICACAO[I])
            FIMPARA

            ESCREVAL("------------------------------")
            ESCREVAL("DADOS DA ENTRADA DE MERCADORIA")
            ESCREVAL("------------------------------")

            ENTRADAMENSAL <- ENTRADAANUAL / 12
            ENTRADASEMANAL <- ENTRADAMENSAL / 4
            ESCREVAL(ENTRADAANUAL:5, " MERCADORIAS.")
            ESCREVAL(ENTRADAMENSAL:5, " MERCADORIAS POR MÊS.")
            ESCREVAL(ENTRADASEMANAL:5, " MERCADORIAS POR SEMAMA.")
            ESCREVAL()
            VOLTARMENU()
         FIMSE

         SE RESPOSTA =  4 ENTAO
            SAIDACOMPRAR <- "S"
            TOTALVEZES <- 1
            TOTALVEZES2 <- 2
            TOTALVEZES <- TOTALVEZES4
            ENQUANTO SAIDACOMPRAR = "S" FACA
               SE TOTALVEZES2 > TOTALVEZES ENTAO
                  ESCREVAL("CÓDIGO DO PEDIDO: ")
                  LEIA(PEDIDO)
                  PARA I <- 1 ATE 100 FACA
                     SE PEDIDO = PRODUCAO.CODIGO[I] ENTAO
                        ESCREVAL("NOME DO PRODUTO: ")
                        LEIA(PRODUCAO.NOME[I])
                        ESCREVAL("NOME DO CLIENTE: ")
                        LEIA(CLIENTE)
                        ESCREVAL("QUANTIDADE: ")
                        LEIA(QUANTIDADESAIDA)
                        SE QUANTIDADESAIDA > PRODUCAO.QUANTIDADE[I] ENTAO
                           ESCREVAL("INFELIZMENTE NÃO PODEREMOS ATENDER A SÁIDA.")
                           ESCREVAL("ESTOQUE EM FALTA.")
                        SENAO
                           PRODUCAO.QUANTIDADE[I] <- PRODUCAO.QUANTIDADE[I] - QUANTIDADESAIDA
                           TOTALITENS <- TOTALITENS + 1
                           //TROCA DE VALORES PARA A O LIMITE DE COMPRA NO DIA
                           TOTALVEZES3 <- TOTALVEZES3 + 1
                           TOTALVEZES4 <- TOTALVEZES3
                           TOTALVENDA <- QUANTIDADESAIDA * PRODUCAO.VALOR[I]
                           ESCREVAL("PEDIDO ATENDIDO.")
                           ESCREVAL("VALOR TOTAL DE R$ ",TOTALVENDA)
                        FIMSE
                        ESCREVAL("")
                        ESCREVAL("TOTAL DE ITENS: ",TOTALITENS)
                     FIMSE
                  FIMPARA
                  ESCREVAL("QUER CONTINUAR A COMPRAR? ")
                  LEIA(SAIDACOMPRAR)
               SENAO
                  ESCREVAL("LIMITE ALCANÇADO DO DIA.")
               FIMSE
            FIMENQUANTO
            VOLTARMENU()
         FIMSE

         SE RESPOSTA =  5 ENTAO
            //CONTROLE DE DESPESAS DA EMPRESA
            escreval ("=================================")
            escreval("          MENU DE DESPESAS        ")
            escreval("===================================")
            escreval()
            escreval("QUAL O VALOR GASTO COM ÁGUA?")
            leia(agua)
            escreval()

            escreval("QUAL O VALOR GASTO COM ENERGIA?")
            leia(luz)
            escreval()

            escreval("QUAL O VALOR TOTAL GASTO COM OS SALÁRIOS DOS FUNCIONÁRIOS?")
            leia(salario)
            escreval()

            impostos <- agua+luz+salario
            escreval("QUANTO DE IMPOSTO ESTÁ SENDO PAGO NO TOTAL?")
            Escreval(impostos)

            pallets<- 1000
            totaldesp<- impostos/pallets

            ESCREVAL("=====================================")
            escreval("O CUSTO DE CADA PALLET EQUIVALE A:")
            ESCREVAL(totaldesp)
            ESCREVAL("=======================================")
            lucro1 <- totaldesp / 2

            ESCREVAL("------------------------------------------------")
            escreval("O TOTAL DE LUCRO COM CADA PALLET É:", lucro1)
            ESCREVAL("------------------------------------------------")
            ESCREVAL()
            VOLTARMENU()
         FIMSE

         SE RESPOSTA = 6 ENTAO
            //CADASTRAR OS FUNCIONÁRIOS
            ESCREVAL("----------------------")
            ESCREVAL("       CADASTRO       ")
            ESCREVAL("----------------------")
            ESCREVAL("QUANTOS FUNCIONÁRIOS PARA SER CADASTRADOS? ")
            LEIA(FUNCIONARIO2)
            PARA I <- 1 ATE FUNCIONARIO2 FACA
               ESCREVAL("NOME DO FUNCIONÁRIO: ")
               LEIA(COLABORADOR.FUNCIONARIO[I])
               ESCREVAL("CARGO: ")
               LEIA(COLABORADOR.CARGO[I])
               //CALCULANDO O VALOR DO SALÁRIO DO FUNCIONÁRIO EM QUESTÃO
               SE COLABORADOR.CARGO[I] = "OPERADOR" ENTAO
                  COLABORADOR.SALARIO[I] <- 200 * 15
               FIMSE
               SE COLABORADOR.CARGO[I] = "SUPERVISOR" ENTAO
                  COLABORADOR.SALARIO[I] <- 200 * 40
               FIMSE
               SE COLABORADOR.CARGO[I] = "GERENTE" ENTAO
                  COLABORADOR.SALARIO[I] <- 200 * 60
               FIMSE
               SE COLABORADOR.CARGO[I] = "DIRETOR" ENTAO
                  COLABORADOR.SALARIO[I] <- 200 * 80
               FIMSE
               ESCREVAL("CPF: ")
               LEIA(COLABORADOR.CPF[I])
               ESCREVAL("RG: ")
               LEIA(COLABORADOR.RG[I])
               ESCREVAL("ENDEREÇO: ")
               LEIA(COLABORADOR.LOCALFUNCIONARIO[I])
               ESCREVAL("TELEFONE: ")
               LEIA(COLABORADOR.TELEFONE[I])
               ESCREVAL("QUANTIDADE DE FILHOS: ")
               LEIA(COLABORADOR.FILHOS[I])
               ESCREVAL()
            FIMPARA
            VOLTARMENU()
         FIMSE

         //MOSTRAR O SALÁRIO
         SE RESPOSTA = 7 ENTAO
            PARA I <- 1 ATE FUNCIONARIO2 FACA
               ESCREVAL("O SALÁRIO BRUTO DE ", COLABORADOR.FUNCIONARIO[I], " R$ ", COLABORADOR.SALARIO[I])
               ESCREVAL()
            FIMPARA
            VOLTARMENU()
         FIMSE

         //CALCULAR A HORA EXTRA
         SE RESPOSTA = 8 ENTAO
            HORAS <- 200
            ESCREVAL("QUANTAS HORAS FORAM TRABALHADAS NO MÊS?")
            LEIA(HORAS2)
            SE HORAS2 > HORAS ENTAO
               ESCREVAL("DIGITE O CARGO")
               LEIA (CARGO)
               SE CARGO = "OPERADOR" ENTAO
                  //CHAMADA DO PROCEDIMENTO COM PARÂMETRO
                  HORAEXTRA(30, 3000)
               FIMSE
               SE CARGO = "SUPERVISOR" ENTAO
                  HORAEXTRA(80, 8000)
               FIMSE
               SE (CARGO = "DIRETOR") OU (CARGO = "GERENTE") ENTAO
                  ESCREVAL()
                  ESCREVAL(CARGO, " NÃO RECEBE HORA EXTRA.")
               FIMSE

               //ORDENAR POR NOME
               PARA I DE 1 ATE FUNCIONARIO2 FACA
                  PARA J DE I + 1 ATE FUNCIONARIO2 FACA
                     SE (COLABORADOR.FUNCIONARIO[I] > COLABORADOR.FUNCIONARIO[J]) ENTAO
                        N <- COLABORADOR.FUNCIONARIO[I]
                        COLABORADOR.FUNCIONARIO[I] <- COLABORADOR.FUNCIONARIO[J]
                        COLABORADOR.FUNCIONARIO[J] <- N
                     FIMSE
                  FIMPARA
               FIMPARA

               //LISTAR TODOS OS FUNCIONÁRIOS(TODOS OS FUNCIONÁRIOS PAGAM O IR)
               ESCREVAL("----------------------")
               ESCREVAL("LISTA DOS FUNCIONÁRIOS")
               ESCREVAL("----------------------")
               PARA I <- 1 ATE FUNCIONARIO2 FACA
                  ESCREVAL(COLABORADOR.FUNCIONARIO[I])
                  ESCREVAL("OBRIGATÓRIO O PAGAMENTO DO IMPOSTO DE RENDA.")
                  ESCREVAL()
               FIMPARA
               VOLTARMENU()
            FIMSE
         FIMSE

         //SALÁRIO LIQUIDO(COM UM PROCEDIMENTO)
         SE RESPOSTA = 9 ENTAO
            ESCREVAL("SALÁRIO LIQUÍDO.")
            PARA I <- 1 ATE FUNCIONARIO2 FACA
               SE COLABORADOR.SALARIO[I] < 2501 ENTAO
                  LIQUIDO(8)
               FIMSE
               SE (COLABORADOR.SALARIO[I] > 2499) E (COLABORADOR.SALARIO[I] < 4001) ENTAO
                  LIQUIDO(10)
               FIMSE
               SE (COLABORADOR.SALARIO[I] > 3999) E (COLABORADOR.SALARIO[I] < 5501) ENTAO
                  LIQUIDO(12)
               FIMSE
               SE COLABORADOR.SALARIO[I] > 5500 ENTAO
                  LIQUIDO(15)
               FIMSE
            FIMPARA
            VOLTARMENU()
         FIMSE

         //IMPOSTO DE RENDA(PORCENTAGEM)
         SE RESPOSTA = 10 ENTAO
            ESCREVAL("IMPOSTO DE RENDA.")
            PARA I <- 1 ATE FUNCIONARIO2 FACA
               SE COLABORADOR.SALARIO[I] < 1903 ENTAO
                  ESCREVAL("ISENTO")
               FIMSE
               SE (COLABORADOR.SALARIO[I] > 1903) E (COLABORADOR.SALARIO[I] < 2826) ENTAO
                  IR3(7.5)
               FIMSE
               SE (COLABORADOR.SALARIO[I] > 2826) E (COLABORADOR.SALARIO[I] < 3751) ENTAO
                  IR3(15)
               FIMSE
               SE COLABORADOR.SALARIO[I] > 3751 ENTAO
                  IR3(22)
               FIMSE
            FIMPARA
            VOLTARMENU()
         FIMSE

         SE RESPOSTA = 11 ENTAO
            VOLTARMENU()
         FIMSE
      FIMENQUANTO
      ESCREVAL("ENCERRAR O PROGRAMA? [S/N]")
      LEIA(SAIR)
   FIMENQUANTO

   LIMPATELA
   ESCREVAL("          CRÉDITOS          ")
   ESCREVAL()
   ESCREVAL(" CAUAN CORREIA [PROGRAMADOR]")
   ESCREVAL()
   ESCREVAL(" JOÃO LIMA [PROGRAMADOR]")
   ESCREVAL()
   ESCREVAL(" VITOR ROSA [PROGRAMADOR]")
Fimalgoritmo