Feature: Concluir Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra


Scenario: Cadastro com dados validos
Given que eu esteja ba pagina de cadastro
When eu preencher todos os campos obrigatorios com dados validos
And clicar no botao "Cadastrar"
Then eu devo ser direcionaddo para a pagina de finalizacao de compra

Scenario: Cadastro com email invalido
Given que eu esteja na pagina de cadastro
When eu preencher o campo de email com um formato invalido
And clicar no botao "cadastrar"
Then o sistema de exibir uma mensagem de erro indicandoque o email e invalido


Scenario Outline: Cadastro com dados de diferentes tipos
Given que eu esteja na pagina de cadastro
When eu preencher o campo "<campo>" com "<dado>"
And clicar no botao "Cadastrar"
Then o sistema deve exibir uma <mensagem>

Examples:
    | campo| dado | mensagem |
    | senha | 12345  | senha fraca  |
    | confirmar senha | 123456  | senhas nao coincidem  |