*** Settings ***
Library    SeleniumLibrary

# <<<<<<<<<<<<<<ESTE É O FAKE >>>>>>>>>>>>>>>>>>>>>>>

*** Variables ***
${URL}    https://www.amazon.com.br
${MAIS_VENDIDOS}    //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')] 
${MAIS VENDIDOS EM COZINHA}

*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome    #ABRIR NAVEGADOR
    Maximize Browser Window          #MAXIMIZAR A TELA

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MAIS_VENDIDOS}   

Entrar no menu "Mais vendidos" 
    Click Element    locator=${MAIS_VENDIDOS} 

Verificar se aparece a frase "Mais vendidos"
    Wait Until Page Contains    text=Mais Vendidos 
    Wait Until Element Is Visible    locator=//h2[@class='a-carousel-heading a-inline-block'][contains(.,'Mais Vendidos em Cozinha')]

# Verificar se o título da página fica "${TITULO}" 
#     Title Should Be    title=${TITULO}  
    



