***Settings***
Library  SeleniumLibrary

***Variables***
# campos do formulário
${BUTTON_PESQUISAR}  xpath=//button[text()='Pesquisar']
${BUTTON_CADASTRAR}  id=cadastrar

${CAMPO_MENSAGEM}  id=msg

${CHECK_TESTES_AUTOMATIZADOS}  xpath=//span[contains(text(),'Testes Automatizados')]/preceding::input[1]
${CHECK_VIDEO_GAMES}  xpath=//span[contains(text(),'Video Games')]/preceding::input[1]

${INPUT_NOME_DO_CLIENTE}  id=nome_cliente
${INPUT_CPF_DO_CLIENTE}  id=cpf
${INPUT_DATA_NASCIMENTO_DO_CLIENTE}  id=dtnasc
${INPUT_CEP_DO_CLIENTE}  id=cep
${INPUT_NUMERO_END_CLIENTE}  id=numero
${INPUT_RUA_DO_CLIENTE}  id=rua

${RADIO_MASCULINO}  xpath=//input[@value='masculino']

${SELECT_ESTADO_CIVIL_DO_CLIENTE}  id=estado-civil

${TITLE_PAGE_CADASTRO}  Cadastro de Clientes
${MENSAGEM_CADASTRO_SUCESSO}  Cliente cadastrado com sucesso!
${MENSAGEM_NOME_OBRIGATORIO}  Nome é obrigatório!
${MENSAGEM_CPF_OBRIGATORIO}   CPF é obrigatório!

#valores para preencher nos campos do formulario

${NOME_DO_CLIENTE}  José da Silva
${CPF_DO_CLIENTE}  12345678901
${DATA_NASCIMENTO_DO_CLIENTE}  21011999
${CEP_DO_CLIENTE}  88130600
${RUA_DO_CLIENTE}  Avenida Elza Lucchi
${NUMERO_ENDEREC0_DO_CLIENTE}  1344
${ESTADO_CIVIL_DO_CLIENTE}  Casado(a)

***Keywords***
Aguardar o valor "${valor_esperado}" no elemento "${elemento}" estar presente
  ${valor_atual}=  Get Element Attribute  ${elemento}  value
  Should Be Equal As Strings  ${valor_atual}  ${valor_esperado}

Verificar se o titulo da pagina de cadastro de clientes esta correto
  Title Should Be   ${TITLE_PAGE_CADASTRO}

Preencher os campos do formulario de cadastrado de Clientes
  Input Text  ${INPUT_NOME_DO_CLIENTE}   ${NOME_DO_CLIENTE}
  Input Text  ${INPUT_CPF_DO_CLIENTE}   ${CPF_DO_CLIENTE}
  Input Text  ${INPUT_DATA_NASCIMENTO_DO_CLIENTE}  ${DATA_NASCIMENTO_DO_CLIENTE}  
  Click Element  ${RADIO_MASCULINO}
  Input Text  ${INPUT_CEP_DO_CLIENTE}  ${CEP_DO_CLIENTE}
  Click Element  ${BUTTON_PESQUISAR} 
  Wait Until Keyword Succeeds   10s  200ms  Aguardar o valor "${RUA_DO_CLIENTE}" no elemento "${INPUT_RUA_DO_CLIENTE}" estar presente
  Input Text  ${INPUT_NUMERO_END_CLIENTE}  ${NUMERO_ENDEREC0_DO_CLIENTE}
  Select From List By Value  ${SELECT_ESTADO_CIVIL_DO_CLIENTE}  ${ESTADO_CIVIL_DO_CLIENTE}
  Click Element  ${CHECK_TESTES_AUTOMATIZADOS} 
  Click Element  ${CHECK_VIDEO_GAMES} 

Cadastrar o Cliente
    Click Element  ${BUTTON_CADASTRAR} 
    Wait Until Element Is Visible  ${CAMPO_MENSAGEM}

Verificar a mensagem de cliente cadastrado com sucesso
    Wait Until Page Contains  ${MENSAGEM_CADASTRO_SUCESSO}

Verificar a mensagem informando que o campo nome é obrigatorio
    Wait Until Page Contains  ${MENSAGEM_NOME_OBRIGATORIO}

Preencher o nome do cliente
    Input Text  ${INPUT_NOME_DO_CLIENTE}   ${NOME_DO_CLIENTE}

Verificar a mensagem informando que o campo cpf é obrigatorio
    Wait Until Page Contains  ${MENSAGEM_CPF_OBRIGATORIO}