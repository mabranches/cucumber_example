#language: pt

Funcionalidade: Testar scores

@javascript
Cenário: Tentar cadastrar score invalido
  Dado que eu acesso a pagina de scores
  E clico no link adicionar novo score
  E que eu preencho o nome com "teste"
  E que eu preencho o score com "-10"
  #Então o sistema apresenta a mensagem "error prohibited this high_score from being saved"
  #Então o sistema apresenta a mensagem "burro"
  Então o sistema apresenta a mensagem "burro"

@javascript
Cenário: Cadastrar scores válidos
  Dado que eu acesso a pagina de scores
  E clico no link adicionar novo score
  E adiciono os scores:
    |NAME  |SCORE|
    |teste1|10   |
    |teste2|20   |
    |teste3|30   |
    |teste4|40   |
  Entao Todos os scores adicionados devem aparecer na tela inicial

@javascript
Cenário: Cadastrar scores válidos usando id
  Dado que eu acesso a pagina de scores
  E clico no link adicionar novo score
  E adiciono os scores usando id:
    |NAME  |SCORE|
    |teste1|10   |
    |teste2|20   |
    |teste3|30   |
    |teste4|40   |
  Entao Todos os scores adicionados devem aparecer na tela inicial
