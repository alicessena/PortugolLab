programa
{
  funcao inicio()
  {
    inteiro numeroDias, garrafasDia, totalGarrafas = 0
    real mediaDiaria
    
    escreva("=== CONTROLE DE PRODUÇÃO DIÁRIA ===\n\n")
    
    escreva("Quantos dias deseja registrar? ")
    leia(numeroDias)
    
    enquanto (numeroDias <= 0)
    {
      escreva("Valor inválido! Digite um número positivo de dias: ")
      leia(numeroDias)
    }
    
    para (inteiro dia = 1; dia <= numeroDias; dia++)
    {
      escreva("\nDia ", dia, ": Quantas garrafas foram produzidas? ")
      leia(garrafasDia)
      
      enquanto (garrafasDia < 0)
      {
        escreva("Valor inválido! A quantidade não pode ser negativa: ")
        leia(garrafasDia)
      }

      totalGarrafas = totalGarrafas + garrafasDia
    }
    
    mediaDiaria = totalGarrafas / (numeroDias * 1.0)
    
    escreva("\n=== RELATÓRIO DE PRODUÇÃO ===\n")
    escreva("Total de garrafas produzidas: ", totalGarrafas)
    escreva("\nMédia de produção diária: ", mediaDiaria, " garrafas/dia")
    
    escreva("\nDesempenho: ")
    se (mediaDiaria < 1000)
    {
      escreva("Produção baixa")
    }
    senao se (mediaDiaria <= 2000)
    {
      escreva("Produção satisfatória")
    }
    senao
    {
      escreva("Produção excelente")
    }
    
    escreva("\n\nFim do programa!\n")
  }
}