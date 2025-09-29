programa {
  funcao inicio() {
    const real PRECO_BASE = 30.0
    
    inteiro totalIngressos = 0
    inteiro totalInteira = 0
    inteiro totalMeia = 0
    inteiro totalPromocional = 0
    inteiro totalGratuitos = 0
    real totalArrecadado = 0.0
    
    inteiro quantidade
    inteiro tipo
    inteiro idade
    real valorTotal
    inteiro metodoPagamento
    real valorRecebido
    real troco
    caracter atenderProximo
    
    faca {
      escreva("\n===== BILHETERIA DE CINEMA =====\n")
      
      faca {
        escreva("Digite a quantidade de ingressos: ")
        leia(quantidade)
        
        se (quantidade < 1) {
          escreva("Valor inválido! A quantidade deve ser maior ou igual a 1.\n")
        }
      } enquanto (quantidade < 1)
      
      valorTotal = 0.0
      
      para (inteiro i = 1; i <= quantidade; i++) {
        escreva("\n--- Ingresso ", i, " ---\n")
        
        faca {
          escreva("Tipo de ingresso:\n")
          escreva("1) Inteira (R$ ", PRECO_BASE, ")\n")
          escreva("2) Meia (R$ ", PRECO_BASE * 0.5, ")\n")
          escreva("3) Promocional (R$ ", PRECO_BASE * 0.7, ")\n")
          escreva("Escolha: ")
          leia(tipo)
          
          se (tipo < 1 ou tipo > 3) {
            escreva("Opção inválida! Escolha entre 1 e 3.\n")
          }
        } enquanto (tipo < 1 ou tipo > 3)
        
        faca {
          escreva("Idade do cliente: ")
          leia(idade)
          
          se (idade < 0 ou idade > 120) {
            escreva("Idade inválida! Deve estar entre 0 e 120.\n")
          }
        } enquanto (idade < 0 ou idade > 120)
        
        real valorIngresso = PRECO_BASE
        caracter tipoAplicado = ' '
        
        se (idade < 5) {
          valorIngresso = 0.0
          tipoAplicado = 'G'
          totalGratuitos++
        } senao se (tipo == 2) {
          valorIngresso = PRECO_BASE * 0.5
          tipoAplicado = 'M'
          totalMeia++
        } senao se (tipo == 3) {
          valorIngresso = PRECO_BASE * 0.7
          tipoAplicado = 'P'
          totalPromocional++
        } senao {
          tipoAplicado = 'I'
          totalInteira++
        }
        
        escreva("Valor do ingresso ", i, ": R$ ", valorIngresso, " (")
        escolha (tipoAplicado) {
          caso 'G': escreva("Gratuito - menor de 5 anos")
          caso 'M': escreva("Meia-entrada")
          caso 'P': escreva("Promocional")
          caso 'I': escreva("Inteira")
        }
        escreva(")\n")
        
        valorTotal += valorIngresso
        
        totalIngressos++
      }
      
      escreva("\n--- RESUMO DA COMPRA ---\n")
      escreva("Quantidade de ingressos: ", quantidade, "\n")
      escreva("Valor total: R$ ", valorTotal, "\n")
      
      faca {
        escreva("\nMétodo de pagamento:\n")
        escreva("1) Dinheiro\n")
        escreva("2) Cartão\n")
        escreva("Escolha: ")
        leia(metodoPagamento)
        
        se (metodoPagamento < 1 ou metodoPagamento > 2) {
          escreva("Opção inválida! Escolha 1 ou 2.\n")
        }
      } enquanto (metodoPagamento < 1 ou metodoPagamento > 2)
      
      se (metodoPagamento == 1) {
        faca {
          escreva("Valor recebido em dinheiro: R$ ")
          leia(valorRecebido)
          
          se (valorRecebido < valorTotal) {
            escreva("Valor insuficiente! O valor mínimo é R$ ", valorTotal, "\n")
          }
        } enquanto (valorRecebido < valorTotal)
        
        troco = valorRecebido - valorTotal
        escreva("Troco: R$ ", troco, "\n")
      } senao {
        escreva("Transação com cartão confirmada.\n")
      }
      
      totalArrecadado += valorTotal
      
      escreva("\nAtender próximo cliente? (S/N): ")
      leia(atenderProximo)
      
    } enquanto (atenderProximo == 'S' ou atenderProximo == 's')
    
    escreva("\n===== RELATÓRIO FINAL DO EXPEDIENTE =====\n")
    escreva("Total de ingressos vendidos: ", totalIngressos, "\n")
    escreva("Ingressos inteira: ", totalInteira, "\n")
    escreva("Ingressos meia-entrada: ", totalMeia, "\n")
    escreva("Ingressos promocionais: ", totalPromocional, "\n")
    escreva("Ingressos gratuitos: ", totalGratuitos, "\n")
    escreva("Total arrecadado: R$ ", totalArrecadado, "\n")
  }
}