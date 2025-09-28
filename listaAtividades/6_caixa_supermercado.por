programa
{
	funcao inicio()
	{
		cadeia nomeProduto, continuar = "S"
		real precoUnitario, subtotal = 0.0, valorProduto
		inteiro quantidade
		
		escreva("=== SIMULADOR DE CAIXA DE SUPERMERCADO ===\n")
		
		enquanto(continuar == "S" ou continuar == "s")
		{
			escreva("\nDigite o nome do produto: ")
			leia(nomeProduto)
			
			escreva("Digite o preço unitário: R$ ")
			leia(precoUnitario)
			
			se(precoUnitario <= 0)
			{
				escreva("Valor inválido! O preço deve ser maior que zero.\n")
			}
			senao
			{
				escreva("Digite a quantidade: ")
				leia(quantidade)
				
				se(quantidade < 1)
				{
					escreva("Valor inválido! A quantidade deve ser maior ou igual a 1.\n")
				}
				senao
				{
					valorProduto = precoUnitario * quantidade
					subtotal = subtotal + valorProduto
					
					escreva("Produto registrado: " + nomeProduto + " - R$ " + valorProduto + "\n")
					escreva("Subtotal atual: R$ " + subtotal + "\n")
				}
			}
			
			faca
			{
				escreva("\nDeseja registrar outro produto? (S/N): ")
				leia(continuar)
				
				se(continuar != "S" e continuar != "s" e continuar != "N" e continuar != "n")
				{
					escreva("Opção inválida! Digite S para Sim ou N para Não.\n")
				}
			}
			enquanto(continuar != "S" e continuar != "s" e continuar != "N" e continuar != "n")
		}
		
		escreva("\n=== COMPRA FINALIZADA ===\n")
		escreva("Valor total da compra: R$ " + subtotal)
		escreva("\nObrigado por utilizar o simulador de caixa!")
	}
}