programa {
  funcao inicio() {
    real horasAtividade
    inteiro pontos
    
    faca {
      escreva("Digite quantas horas de atividade física você teve no mês: ")
      leia(horasAtividade)
      
      se (horasAtividade < 0) {
        escreva("Valor inválido! O número de horas não pode ser negativo.\n")
      }
    } enquanto (horasAtividade < 0)
    
    se (horasAtividade <= 10) {
      pontos = horasAtividade * 2
    } senao se (horasAtividade <= 20) {
      pontos = horasAtividade * 5
    } senao {
      pontos = horasAtividade * 10
    }
    
    escreva("\nRegras de pontuação:")
    escreva("\n- Até 10 horas: 2 pontos por hora")
    escreva("\n- De 10 a 20 horas: 5 pontos por hora")
    escreva("\n- Mais de 20 horas: 10 pontos por hora\n")

    escreva("\n--- RESULTADO ---\n")
    escreva("Horas de atividade física no mês: ", horasAtividade, " horas\n")
    escreva("Pontos obtidos: ", pontos, " pontos\n")
    
    escreva("\nMensagem: ")
    se (pontos < 20) {
      escreva("Você está começando bem! Continue se exercitando para ganhar mais pontos.")
    } senao se (pontos < 100) {
      escreva("Bom trabalho! Você está no caminho certo para uma vida mais saudável.")
    } senao {
      escreva("Excelente! Você é um exemplo de dedicação à atividade física.")
    }
    escreva("\n")
  }
}