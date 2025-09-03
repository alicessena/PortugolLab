programa
{
	funcao inicio()
	{
		cadeia tipocliente
		real valorcompra, desconto, valorfinal

		escreva("Digite o tipo de cliente (1 : Premium, 2 : Gold, 3 : Regular): ")
		leia(tipocliente)

		escreva("Digite o valor total da compra: R$")
		leia(valorcompra)

		desconto = 0

		se (tipocliente == "1") {
			se (valorcompra > 500) {
				desconto = 0.20
			}
			senao {
				desconto = 0.15
			}
		}
		senao se (tipocliente == "2") {
			se (valorcompra > 300) {
				desconto = 0.10
			}
			senao {
				desconto = 0.08
			}
		}
		senao se (tipocliente == "3") {
			se (valorcompra > 100) {
				desconto = 0.05
			}
			senao {
				desconto = 0
			}
		}
		senao {
			escreva("Tipo de cliente inválido!\n")
			retorne
		}

		valorfinal = valorcompra * (1 - desconto)

		escreva("Desconto aplicado: ", desconto * 100, "%\n")
		escreva("Valor a pagar: R$ ", valorfinal, "\n")
	}
}
