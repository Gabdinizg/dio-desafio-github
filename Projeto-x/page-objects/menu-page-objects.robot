***Variables***
${BUTTON_CADASTRO_DE_CLIENTES}  id=btn-cadastro-cliente
${BUTTON_LOGOUT}     id=btn-logout

***Keywords***
Ir para o pagina de cadastro de cliente
    Click Element  ${BUTTON_CADASTRO_DE_CLIENTES}

Fazer logout do sistema de cadastro de clientes
    Click Element   ${BUTTON_LOGOUT}