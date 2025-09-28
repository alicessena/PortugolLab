programa {
  funcao inicio() {
    real largura, altura, area, latasNecessarias
    inteiro latas

    faca {
      escreva("Digite a largura da parede (em metros): ")
      leia(largura)
      
      se (largura <= 0) {
        escreva("Valor inválido! A largura deve ser maior que zero.\n")
      }
    } enquanto (largura <= 0)
    
    faca {
      escreva("Digite a altura da parede (em metros): ")
      leia(altura)
      
      se (altura <= 0) {
        escreva("Valor inválido! A altura deve ser maior que zero.\n")
      }
    } enquanto (altura <= 0)
    
    area = largura * altura
    
    latasNecessarias = area / 10.0
    latas = 0
    enquanto (latas * 10.0 < area) {
      latas = latas + 1
    }
    
    escreva("\n--- Resultados ---\n")
    escreva("Largura da parede: ", largura, " metros\n")
    escreva("Altura da parede: ", altura, " metros\n")
    escreva("Área total a ser pintada: ", area, " m²\n")
    escreva("Número de latas de tinta necessárias: ", latas, " lata(s)\n")
  }
}