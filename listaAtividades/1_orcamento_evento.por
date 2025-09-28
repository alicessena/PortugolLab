programa {
  funcao inicio() {
    inteiro qtdAlunos, qtdKits
    real valorCamisetas, valorUnitarioKit, valorAluguel, valorPatrocinio
    real totalGasto, totalAposPatrocinio, valorPorAluno
    
    escreva("Digite a quantidade de alunos inscritos: ")
    leia(qtdAlunos)
    
    escreva("Digite o valor total das camisetas: ")
    leia(valorCamisetas)
    
    escreva("Digite a quantidade de kits de coffee break: ")
    leia(qtdKits)
    
    escreva("Digite o valor unitário do kit de coffee break: ")
    leia(valorUnitarioKit)
    
    escreva("Digite o valor do aluguel do auditório: ")
    leia(valorAluguel)
    
    escreva("Digite o valor do patrocínio recebido: ")
    leia(valorPatrocinio)
    
    totalGasto = valorCamisetas + (qtdKits * valorUnitarioKit) + valorAluguel
    
    totalAposPatrocinio = totalGasto - valorPatrocinio
    se (totalAposPatrocinio < 0) {
      totalAposPatrocinio = 0.0
    }
    
    valorPorAluno = totalAposPatrocinio / qtdAlunos
    
    escreva("\n--- Resultados ---\n")
    escreva("Total gasto: R$ ", totalGasto, "\n")
    escreva("Total após patrocínio: R$ ", totalAposPatrocinio, "\n")
    escreva("Valor por aluno: R$ ", valorPorAluno, "\n")
  }
}