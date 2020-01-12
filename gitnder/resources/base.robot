*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
###    Setup e Teardown
Abrir Navegador
    Open Browser                  https://gitnder.herokuapp.com/    chrome
    Set Selenium Implicit Wait    10
    Set Window Size               1440                              900
Fechar Navegador
    Capture Page Screenshot
    Close Browser