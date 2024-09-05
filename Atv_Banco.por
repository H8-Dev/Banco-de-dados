programa {
  funcao inicio() {
    inteiro menu, x
    logico logic
    real saldo = 0
    real saque, deposito, entrada, saida
//----------------------------------------
    logic = verdadeiro
    entrada = 0
    saida = 0
//----------------------------------------
    enquanto(logic == verdadeiro){
    escreva("|----------- Menu -----------|\n")
    escreva("| Saldo: R$", saldo, "\n")
    escreva("| 1) - Saque\n")
    escreva("| 2) - Depósito\n")
    escreva("| 3) - Extrato\n")
    escreva("| 0) - Sair \n")
    escreva("|----------------------------|\n")
    escreva("| : ")

    leia(menu)

    escolha(menu){

      caso 1: //Saque
      limpa()
      se(saldo > 0){
        escreva("O seu saldo atual é: R$", saldo, "\n")
        escreva("Digite a quantidade de dinheiro que gostaria de sacar: R$")
        leia(saque)
        saldo = saldo - saque
        saida = saida + saque
        escreva("O seu saldo atual é de: R$", saldo, "\n")
        escreva("Digite qualquer número para voltar ao menu inicial: ")
        leia(x)
        limpa()  
      }
      senao{
       escreva("Você não possuí um dinheiro para realizar um saque!!\n")
       escreva("Digite qualquer número para voltar ao menu inicial: ")
        leia(x)
      }
      limpa()
      pare

      caso 2: //Depósito
      limpa()
      escreva("O seu saldo atual é de: R$", saldo, "\n")
      escreva("Digite a quantidade que será depositada em seu saldo: R$")
      leia(deposito)
      enquanto(deposito < 0){
      escreva("ERRO!! Digite um número válido: ")
        leia(deposito)
      }
        saldo = saldo + deposito
        entrada = entrada + deposito
      escreva("O seu novo saldo é: R$", saldo, "\n")
      escreva("Digite qualquer número para voltar ao menu inicial: ")
      leia(x)
      limpa()
      
      pare

      caso 3: //Extrato
      limpa()
      escreva("Seu saldo atual é de: R$", saldo, "\n")
      escreva("Você teve um total de: R$", entrada, " em entradas de dinheiro e um total de: R$", saida, " em saídas de dinheiro.\n")
      escreva("Digite qualquer número para voltar ao menu inicial: ")
      leia(x)
      limpa()
      pare

      caso 0: // Finalizar o programa
      logic = falso
      pare

    }
    }
  }
}
