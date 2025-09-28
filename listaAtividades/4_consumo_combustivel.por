programa {
  funcao inicio() {
    real distancia, combustivel, consumo
    
    faca {
      escreva("Digite a distância total percorrida (em km): ")
      leia(distancia)
      
      se (distancia <= 0) {
        escreva("Valor inválido! A distância deve ser maior que zero.\n")
      }
    } enquanto (distancia <= 0)
    
    faca {
      escreva("Digite a quantidade de combustível gasto (em litros): ")
      leia(combustivel)
      
      se (combustivel <= 0) {
        escreva("Valor inválido! A quantidade de combustível deve ser maior que zero.\n")
      }
    } enquanto (combustivel <= 0)
    
    consumo = distancia / combustivel
    
    escreva("\n--- RESULTADO DA ANÁLISE ---\n")
    escreva("Distância percorrida: ", distancia, " km\n")
    escreva("Combustível gasto: ", combustivel, " litros\n")
    escreva("Consumo médio: ", consumo, " km/l\n")
    
    escreva("Classificação: ")
    
    se (consumo < 4) {
      escreva("Muito ruim")
    } senao se (consumo >= 4 e consumo < 8) {
      escreva("Ruim")
    } senao se (consumo >= 8 e consumo < 12) {
      escreva("Regular")
    } senao se (consumo >= 12 e consumo < 14) {
      escreva("Bom")
    } senao {
      escreva("Excelente")
    }
  }
}