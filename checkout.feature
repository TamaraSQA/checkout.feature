#language: pt

Funcionalidade: Concluir Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra


Cenario: Cadastro com dados validos
Dado que eu esteja ba pagina de cadastro
Quando eu preencher todos os campos obrigatorios com dados validos
E clicar no botao "Cadastrar"
Entao eu devo ser direcionaddo para a pagina de finalizacao de compra

Cenario: Cadastro com email invalido
Dado que eu esteja na pagina de cadastro
Quando eu preencher o campo de email com um formato invalido
E clicar no botao "cadastrar"
Entao o sistema de exibir uma mensagem de erro indicandoque o email e invalido


Esquema do Cenario: Cadastro com dados de diferentes tipos
Dado que eu esteja na pagina de cadastro
Quando eu preencher o campo "<campo>" com "<dado>"
E clicar no botao "Cadastrar"
Entao o sistema deve exibir uma <mensagem>

Exemplos:
    | campo| dado | mensagem |
    | senha | 12345  | senha fraca  |
    | confirmar senha | 123456  | senhas nao coincidem  |