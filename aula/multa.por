programa {
  funcao inicio() {
    inteiro velocidade
    real multa

    escreva ("informe a valocidade\n")
    leia (velocidade)

    se (velocidade > 80 e velocidade <100) {
      multa = (velocidade - 80) * 5
    } 
    senao se (velocidade < 40) {
      multa = (40 - velocidade) * 5
      escreva ("Corra mais um pouco, está muito lento")
    }

    senao se (velocidade >= 100) {
      multa = (velocidade - 80) * 10
      escreva ("Multa gravíssima")
    }
    
    senao {
      multa=0
      escreva ("\nVocê está na velocidade correta")
    }

    escreva ("\nA velocidade foi: ", velocidade)
    escreva ("\nA  multa foi de: R$ ", multa, " reais")
  }
}
