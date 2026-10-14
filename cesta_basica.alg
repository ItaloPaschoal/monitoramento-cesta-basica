algoritmo "MonitoramentoCestaBasica"
// Disciplina: Algoritmo e Pensamento Computacional
// Autor: Ítalo Gabriel Paschoal da Costa
// Descrição: Programa para monitoramento, cálculo de variação percentual
//            e classificação de preços dos produtos da Cesta Básica.

var
   nome, situacao: caractere
   preco_anterior, preco_atual, variacao: real
   i: inteiro

inicio
   escreval("==================================================")
   escreval("    SISTEMA DE MONITORAMENTO DA CESTA BÁSICA      ")
   escreval("==================================================")
   escreval("")

   // Laço de repetição para processar 3 produtos
   para i de 1 ate 3 faca
      escreval("--------------------------------------------------")
      escreval("PRODUTO ", i, " DE 3")
      escreval("--------------------------------------------------")
      
      // 1. Leitura dos Dados de Entrada
      escreva("Digite o nome do produto: ")
      leia(nome)
      
      escreva("Digite o preço no mês anterior (R$): ")
      leia(preco_anterior)
      
      escreva("Digite o preço no mês atual (R$): ")
      leia(preco_atual)
      
      // 2. Cálculo da Variação Percentual
      variacao <- ((preco_atual - preco_anterior) / preco_anterior) * 100
      
      // 3. Estrutura de Decisão para Classificação da Situação
      se (variacao > 10) entao
         situacao <- "AUMENTO ABUSIVO"
      senao
         se (variacao > 0) entao
            situacao <- "AUMENTO"
         senao
            se (variacao < 0) entao
               situacao <- "QUEDA"
            senao
               situacao <- "ESTÁVEL"
            fimse
         fimse
      fimse
      
      // 4. Exibição Formatada do Relatório Final do Produto
      escreval("")
      escreval(">>> RELATÓRIO DE MONITORAMENTO <<<")
      escreval("Produto: ", nome)
      escreval("Preço Anterior: R$ ", preco_anterior:2:2)
      escreval("Preço Atual:    R$ ", preco_atual:2:2)
      escreval("Variação (%):   ", variacao:2:2, "%")
      escreval("Situação:       ", situacao)
      escreval("")
   fimpara

   escreval("==================================================")
   escreval("   PROCESSAMENTO CONCLUÍDO COM SUCESSO!           ")
   escreval("==================================================")
fimalgoritmo
