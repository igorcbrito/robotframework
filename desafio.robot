***Settings***

Documentation   Pesquisar o robotframework no Google e clicar no resultado desejado

Library     Browser

Suite Setup     Set Strict Mode     False

***Test Cases***
Acessar um resultado de pesquisa no google para robotframework
    New browser     ${browser}    ${headless}
    New page        https://www.google.com/
    Verificar se a página do google é exibida
    Pesquisar por   robot framework
    Verificar se a pesquisa retorna resultados
    Clicar no resultado desejado
    Verificar se o terceiro resultado é o esperado
    Close Browser


***Keywords***
Verificar se a página do google é exibida
    Wait for elements state         css=input[name="q"]      visible     10

Pesquisar por
    [Arguments]     ${pesquisa}

    Fill Text       css=input[name="q"]       ${pesquisa}
    Press Keys      css=input[name="q"]         Enter

Verificar se a pesquisa retorna resultados
    Wait for elements state     xpath=//*[contains(., "Aproximadamente")]   visible     10
    Wait for elements state     xpath=//*[contains(., "resultados")]   visible     10

Clicar no resultado desejado
    Click           xpath=//*[text()='Robot Framework']

Verificar se o terceiro resultado é o esperado
    Wait for elements state     xpath=//*[text()='Introduction']     visible     10