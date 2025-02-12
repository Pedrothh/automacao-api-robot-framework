*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JsonValidator
Library    JSONLibrary

*** Variables ***
${BASE_URL}         https://my-public-api-for-tests-production.up.railway.app
${response}

*** Keywords ***
#### STEPS
Carrega URL
    Create Session    my_session    ${BASE_URL}

Envia requisição
    [Arguments]         ${METODO}    ${ENDPOINT}    ${JSON_FILE}
    IF    '${METODO}' == 'GET'
        ${response}    GET On Session    my_session    ${ENDPOINT}
    ELSE IF    '${METODO}' == 'POST'
        IF    '${ENDPOINT}' == '/api/login'
            ${body}=    Load JSON From File    ${JSON_FILE}
            ${response}=    POST On Session    my_session    ${ENDPOINT}
            ...    json=${body}
            ...    expected_status=any
        END
    END
    Log                 Resposta: ${response.text}
    Set Test Variable   ${response}

Confere o status code
    [Arguments]     ${STATUS_CODE_ESPERADO}
    Should Be Equal As Strings   ${response.status_code}  ${STATUS_CODE_ESPERADO}
    Log    Status Code Retornado: ${response.status_code} -- Status Code Esperado: ${STATUS_CODE_ESPERADO}

Confere o contrato
    [Arguments]     ${SCHEMA_PATH}
    Validate Jsonschema From File    ${response.json()}    ${SCHEMA_PATH}
    Log    Schema Retornado: ${response.json()}