programa
{
  funcao inicio()
  {
    inteiro idade, totalHomens = 0, mulheresMaisDe20 = 0
    inteiro idadeMulherMaisVelha = 0, somaIdades = 0
    cadeia sexo
    real mediaIdades
    
    escreva("=== CADASTRO DE PESSOAS ===\n\n")

    para (inteiro i = 1; i <= 5; i++)
    {
      escreva("Pessoa ", i, ":\n")

      escreva("Idade: ")
      leia(idade)

      enquanto (idade <= 0)
      {
        escreva("Idade inválida! Digite um valor positivo: ")
        leia(idade)
      }

      escreva("Sexo (M/F): ")
      leia(sexo)

      enquanto (sexo != "M" e sexo != "m" e sexo != "F" e sexo != "f")
      {
        escreva("Sexo inválido! Digite M para masculino ou F para feminino: ")
        leia(sexo)
      }

      somaIdades = somaIdades + idade

      se (sexo == "M" ou sexo == "m")
      {
        totalHomens++
      }

      senao
      {
        se (idade > idadeMulherMaisVelha)
        {
          idadeMulherMaisVelha = idade
        }

        se (idade > 20)
        {
          mulheresMaisDe20++
        }
      }
      
      escreva("-----------------------------------\n")
    }
    
    mediaIdades = somaIdades / 5.0
    
    escreva("\n=== RESULTADOS ===\n")
    escreva("a) Total de homens cadastrados: ", totalHomens)
    
    se (totalHomens == 5)
    {
      escreva("\nb) Nenhuma mulher foi cadastrada")
    }
    senao
    {
      escreva("\nb) Idade da mulher mais velha: ", idadeMulherMaisVelha)
    }
    
    escreva("\nc) Média de idade do grupo: ", mediaIdades)
    escreva("\nd) Mulheres com mais de 20 anos: ", mulheresMaisDe20)
    escreva("\n\nFim do programa!\n")
  }
}