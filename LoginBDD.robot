*** Settings ***
Resource  LoginSteps.robot

*** Variables ***
${BASE_URL}         https://my-public-api-for-tests-production.up.railway.app

*** Keywords ***
#### DADO
Dado que a URL está disponível está disponível
    Carrega URL

#### QUANDO
Quando envio a requisição ${METODO} para o endpoint "${ENDPOINT}" com body ${JSON_FILE}
    Envia requisição   ${METODO}    ${ENDPOINT}    ${JSON_FILE}


#### ENTÃO
Então o código de resposta deve ser ${STATUS_CODE_ESPERADO}
    Confere o status code       ${STATUS_CODE_ESPERADO}


#### E
E a estrutura de resposta deve estar de acordo com o arquivo ${SCHEMA_PATH}
    Confere o contrato    ${SCHEMA_PATH}

