programa
{
  funcao inicio()
  {
    inteiro totalAlunos, encontrosFrequentados, alunosAprovados = 0
    cadeia nome
    inteiro alunosReprovados = 0
    
    escreva("=== CONTROLE DE PRESENÇA - CURSO DE TECNOLOGIA ===\n")
    
    escreva("Digite o número total de alunos: ")
    leia(totalAlunos)
    enquanto (totalAlunos <= 0)
    {
      escreva("Valor inválido! O número de alunos deve ser maior que zero: ")
      leia(totalAlunos)
    }
    
    cadeia alunosCertificado[totalAlunos]
    cadeia alunosReprovadosNomes[totalAlunos]
    inteiro contadorCertificado = 0
    inteiro contadorReprovados = 0
    
    escreva("\n--- Registro de Presenças ---\n")
    
    para (inteiro i = 0; i < totalAlunos; i++)
    {
      escreva("\nAluno ", (i+1), ":\n")
      escreva("Nome: ")
      leia(nome)
      
      escreva("Quantidade de encontros frequentados (0-10): ")
      leia(encontrosFrequentados)
      
      enquanto (encontrosFrequentados < 0 ou encontrosFrequentados > 10)
      {
        escreva("Valor inválido! A quantidade de encontros deve estar entre 0 e 10: ")
        leia(encontrosFrequentados)
      }
      
      se (encontrosFrequentados >= 6)
      {
        alunosCertificado[contadorCertificado] = nome
        contadorCertificado++
      }
      
      se (encontrosFrequentados >= 4)
      {
        alunosAprovados++
      }
      senao
      {
        alunosReprovadosNomes[contadorReprovados] = nome
        contadorReprovados++
        alunosReprovados++
      }
    }
    
    real porcentagemAprovados = (alunosAprovados * 100.0) / totalAlunos
    escreva("\n=== RESULTADOS ===\n")
    
    escreva("\nAlunos com direito ao certificado (6 ou mais presenças):\n")
    se (contadorCertificado > 0)
    {
      para (inteiro i = 0; i < contadorCertificado; i++)
      {
        escreva("- ", alunosCertificado[i], "\n")
      }
    }
    senao
    {
      escreva("Nenhum aluno tem direito ao certificado.\n")
    }
    
    escreva("\nPorcentagem de alunos aprovados (4 ou mais presenças): ", porcentagemAprovados, "%\n")
    escreva("\nAlunos reprovados (menos de 4 presenças):\n")
    se (contadorReprovados > 0)
    {
      para (inteiro i = 0; i < contadorReprovados; i++)
      {
        escreva("- ", alunosReprovadosNomes[i], "\n")
      }
    }
    senao
    {
      escreva("Nenhum aluno foi reprovado.\n")
    }
    
    escreva("\nPrograma de controle de presença finalizado!\n")
  }
}