***Settings***
Resource  ../page-objects/login-page-objects.robot
Resource  ../page-objects/menu-page-objects.robot
Resource  ../page-objects/cadastro-de-clientes-page-objects.robot

Suite Setup     Abrir navegador no sistema de cadstro de clientes
Test Setup      Fazer o login no sistema de cadastro de clientes
Test Teardown   Fazer logout do sistema de cadastro de clientes
Suite Teardown  Fechar o navegador

***Test Cases***
Fazer o cadastro de um novo cliente
  Ir para o pagina de cadastro de cliente
  Verificar se o titulo da pagina de cadastro de clientes esta correto
  Preencher os campos do formulario de cadastrado de Clientes
  Cadastrar o Cliente
  Verificar a mensagem de cliente cadastrado com sucesso

Não permitir cadastrar um cliente sem informar o nome
  Ir para o pagina de cadastro de cliente
  Verificar se o titulo da pagina de cadastro de clientes esta correto
  Cadastrar o Cliente
  Verificar a mensagem informando que o campo nome é obrigatorio

Não permitir cadastrar um cliente sem informar o cpf
  Ir para o pagina de cadastro de cliente
  Verificar se o titulo da pagina de cadastro de clientes esta correto
  Preencher o nome do cliente
  Cadastrar o Cliente 
  Verificar a mensagem informando que o campo cpf é obrigatorio
  