programa
{
    funcao inicio()
    {
        real distancia, peso, frete

        escreva("Digite a distância da entrega em km: ")
        leia(distancia)

        escreva("Digite o peso da encomenda em kg: ")
        leia(peso)

        se (distancia > 100)
        {
            frete = distancia * 2.0
        }
        senao
        {
            frete = distancia * 1.5
        }

        se (peso > 10)
        {
            frete = frete + 5.0
        }

        escreva("O custo total do frete é: R$", frete)
    }
}
