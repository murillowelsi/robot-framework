*** Settings ***
Documentation   A test suite with a single test for valid login.
...
...             Para que eu possa conhecer devs e qas com skills em comum
...             Sendo um usuário que possui uma conta no github
...             Quero poder iniciar uma nova sessão

Resource        ../resources/steps.robot

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Nova sessao
    Dado que possuo a conta     "murillowelsi"
    E possuo os skills  "ruby, python, c#"
    Quando eu entro no gitnder
    Entao devo ver a area logada

Conta github incorreta
    [Template]         Tentativa de login
    murillowelsi123

Conta nao informada
    [Template]    Tentativa de login
    ${EMPTY}

*** Keywords ***
Tentativa de login
    [Arguments]                                                         ${conta}
    Given que possuo a conta "${conta}"
    When eu entro no gitnder
    Then devo ver a mensagem de alerta: "Conta Github não existe :("