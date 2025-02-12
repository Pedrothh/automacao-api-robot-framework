*** Settings ***
Resource    LoginBDD.robot

*** Test Cases ***
Cenário 01: Fazer login com sucesso
    [Tags]    Regressão
    Dado que a URL está disponível está disponível
    Quando envio a requisição POST para o endpoint "/api/login" com body jsonSchema/login/Post/request.json
    Então o código de resposta deve ser 200
    E a estrutura de resposta deve estar de acordo com o arquivo jsonSchema/login/Post/response.json

Cenário 02: Tentar fazer login com senha errada
    [Tags]    Regressão
    Dado que a URL está disponível está disponível
    Quando envio a requisição POST para o endpoint "/api/login" com body jsonSchema/login/Post/request-senha-errada.json
    Então o código de resposta deve ser 401
    E a estrutura de resposta deve estar de acordo com o arquivo jsonSchema/login/Post/response-senha-errada.json