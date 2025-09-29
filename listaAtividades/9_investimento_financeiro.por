programa
{ inclua biblioteca Matematica --> mat
  funcao inicio()
  {
    real valorInicial, taxaJuros, valorFinal
    inteiro anos
    cadeia continuar = "S"
    
    escreva("=== SIMULADOR DE INVESTIMENTO FINANCEIRO (JUROS SIMPLES) ===\n")
    
    enquanto (continuar == "S" ou continuar == "s")
    {
      escreva("\nValor inicial do investimento: R$ ")
      leia(valorInicial)

      enquanto (valorInicial <= 0)
      {
        escreva("Valor inválido! O valor inicial deve ser maior que zero: R$ ")
        leia(valorInicial)
      }
      
      escreva("Taxa de juros anual (%): ")
      leia(taxaJuros)

      enquanto (taxaJuros <= 0)
      {
        escreva("Valor inválido! A taxa de juros deve ser maior que zero: ")
        leia(taxaJuros)
      }
      
      taxaJuros = taxaJuros / 100
      
      escreva("Número de anos para o investimento: ")
      leia(anos)
      
      enquanto (anos <= 0)
      {
        escreva("Valor inválido! O número de anos deve ser maior que zero: ")
        leia(anos)
      }
      
      escreva("\n=== PROJEÇÃO DO INVESTIMENTO ===\n")
      escreva("Ano\tValor do Investimento\n")
      escreva("0\tR$ ", valorInicial, " (valor inicial)\n")

      para (inteiro ano = 1; ano <= anos; ano++)
      {
        valorFinal = valorInicial + (valorInicial * taxaJuros * ano)

        valorFinal = mat.arredondar(valorFinal, 2)
        
        escreva(ano, "\tR$ ", valorFinal, "\n")
      }
     
      escreva("\nDeseja fazer outra simulação? (S/N): ")
      leia(continuar)
      
      enquanto (continuar != "S" e continuar != "s" e continuar != "N" e continuar != "n")
      {
        escreva("Resposta inválida! Digite S para Sim ou N para Não: ")
        leia(continuar)
      }
      
      se (continuar == "N" ou continuar == "n")
      {
        continuar = "N"
      }
      senao
      {
        continuar = "S"
      }
    }
    
    escreva("\nObrigado por utilizar o Simulador de Investimento Financeiro!\n")
  }
}