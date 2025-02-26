programa {
  inclua biblioteca Util --> u

  funcao inicio() {
    cadeia pass, confirmPass, user, confirmUser, gerar
    inteiro confirmGeraPass, geraPass, n1, n2, n3, n4, n5, n6

    escreva("Digite um nome de usuário: ")
    leia(user)

    escreva("Crie uma senha ou digite >Gera< para uma senha aleatória: ")
    leia(gerar)
    se (gerar == "Gera" ou gerar == "gera"){
      n1 = u.sorteia(0,9)
      n2 = u.sorteia(0,9)
      n3 = u.sorteia(1,9)
      n4 = u.sorteia(0,9)
      n5 = u.sorteia(0,9)
      n6 = u.sorteia(0,9)

      geraPass = (n1 * 100000) + (n2 * 10000) + (n3 * 1000) + (n4 * 100) + (n5 * 10) + n6
      escreva("Sua senha é: ", geraPass,".\n")
      escreva("Para confirmar, digite a senha gerada: ")
      leia(confirmGeraPass)
      se(confirmGeraPass != geraPass){
        escreva("Você digitou a senha errada, tente de outra forma.\n")
        inicio()
      }
    }
    senao{
      pass = gerar
    }
    limpa()

    escreva("Digite o nome de usuário: ")
    leia(confirmUser)

    se(confirmUser == user){
      escreva("Digite sua senha: ")
      leia(confirmPass)

      se(confirmPass == pass ou confirmPass == geraPass){
        escreva("Bem vindo!!")
      }
      senao{
        escreva("Senha incorreta!!")
      }
    }
    senao{
      escreva("Usuário não encontrado.")
    }

  }
}
