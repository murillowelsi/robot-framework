*** Settings ***
Resource    ./base.robot

*** Keywords ***
### Steps
Dado que possuo a conta    ${conta}
    Set Global Variable    ${conta}

E possuo os skills    ${skills}
    Set Global Variable     ${skills}

Quando eu entro no gitnder
    Input Text       id=gituser                        ${conta}
    Input Text       css:input[placeholder*=skills]    ${skills}
    Click Element    css:button[type=submit]

Entao devo ver a area logada
    Page Should Contain Element    css:.git-users
    Close Browser

Entao devo ver a mensagem de alerta:    ${expect_alert}
    Element Text Should Be    css:.alert-dark    ${expect_alert}