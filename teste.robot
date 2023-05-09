*** Settings ***
Documentation  Essa suite testa o site da Amazon.com.br
Resource       teste_resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador

# <<<<<<<<<<<<<<ESTE É O FAKE >>>>>>>>>>>>>>>>>>>>>>>

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "MAIS_VENDIDOS"
    [Documentation]  Este teste verifica o menu eletrônicos do site da Amazon.com.br
    [Tags]           menus  categotias
    Acessar a home page do site Amazon.com.br
    # Verificar se o titulo da pagina fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"  
    Entrar no menu "Mais vendidos" 
    Verificar se aparece a frase "Mais vendidos"
#   Verificar se o título da página fica "Mais Vendidos | Amazon.com.br"   
#   Verificar se aparece a categoria "Computadores e Informática"

# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]  Este teste verifica a busca de um produto
#     [Tags]           busca_produtos  lista_buscas
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome do produto "Xbox Series S" no campo de Pesquisa
#     Clicar no botão de Pesquisa
#     Verificar o resultado da pesquisa, se está listando o produto pesquisado (conferir um)
