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
    escreva("| 2) - Dep�sito\n")
    escreva("| 3) - Extrato\n")
    escreva("| 0) - Sair \n")
    escreva("|----------------------------|\n")
    escreva("| : ")

    leia(menu)

    escolha(menu){

      caso 1: //Saque
      limpa()
      se(saldo > 0){
        escreva("O seu saldo atual �: R$", saldo, "\n")
        escreva("Digite a quantidade de dinheiro que gostaria de sacar: R$")
        leia(saque)
        saldo = saldo - saque
        saida = saida + saque
        escreva("O seu saldo atual � de: R$", saldo, "\n")
        escreva("Digite qualquer n�mero para voltar ao menu inicial: ")
        leia(x)
        limpa()  
      }
      senao{
       escreva("Voc� n�o possu� um dinheiro para realizar um saque!!\n")
       escreva("Digite qualquer n�mero para voltar ao menu inicial: ")
        leia(x)
      }
      limpa()
      pare

      caso 2: //Dep�sito
      limpa()
      escreva("O seu saldo atual � de: R$", saldo, "\n")
      escreva("Digite a quantidade que ser� depositada em seu saldo: R$")
      leia(deposito)
      enquanto(deposito < 0){
      escreva("ERRO!! Digite um n�mero v�lido: ")
        leia(deposito)
      }
        saldo = saldo + deposito
        entrada = entrada + deposito
      escreva("O seu novo saldo �: R$", saldo, "\n")
      escreva("Digite qualquer n�mero para voltar ao menu inicial: ")
      leia(x)
      limpa()
      
      pare

      caso 3: //Extrato
      limpa()
      escreva("Seu saldo atual � de: R$", saldo, "\n")
      escreva("Voc� teve um total de: R$", entrada, " em entradas de dinheiro e um total de: R$", saida, " em sa�das de dinheiro.\n")
      escreva("Digite qualquer n�mero para voltar ao menu inicial: ")
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
