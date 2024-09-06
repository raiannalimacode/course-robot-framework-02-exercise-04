*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${btn_createNewAccount}    //a[@data-testid="open-registration-form-button"]
${input_firstName}         //input[@name="firstname"]    
${input_lastName}          //input[@name="lastname"]       
${input_phone}             //input[@name="reg_email__"]
${input_password}          //input[@name="reg_passwd__"] 
${select_birthDay}         //select[@id="day"]   
${option_birthDay}         //option[@value="13"] 
${select_birthMonth}       //select[@id="month"]  
${option_birthMonth}       //option[contains(text(), "jan")]              
${select_birthYear}        //select[@id="year"]
${option_birthYear}        //option[@value="2013"]
${input_sex}               //input[@value="1"]
${btn_submit}              //button[@name="websubmit"]

*** Keywords ***
abrir navegador e acessar o site 
    Open Browser    https://www.facebook.com/    chrome

acessar a página de cadastro
    Click Element    ${btn_createNewAccount}

preencher os dados
    Wait Until Element Is Visible    ${input_firstName}
    Input Text                       ${input_firstName}    Arya
    Wait Until Element Is Visible    ${input_lastName}     
    Input Text                       ${input_lastName}     Stark
    Wait Until Element Is Visible    ${input_phone}
    Input Text                       ${input_phone}        51998787766  
    Wait Until Element Is Visible    ${input_password}
    Input Text                       ${input_password}     1234   
    Wait Until Element Is Visible    ${select_birthDay}    
    Click Element                    ${select_birthDay}
    Wait Until Element Is Visible    ${option_birthDay}
    Click Element                    ${option_birthDay}
    Wait Until Element Is Visible    ${select_birthMonth}
    Click Element                    ${select_birthMonth}
    Wait Until Element Is Visible    ${option_birthMonth}
    Click Element                    ${option_birthMonth}
    Wait Until Element Is Visible    ${select_birthYear}
    Click Element                    ${select_birthYear}
    Wait Until Element Is Visible    ${option_birthYear}
    Click Element                    ${option_birthYear}
    Wait Until Element Is Visible    ${input_sex}
    Click Element                    ${input_sex}
    
enviar formulário 
    Click Element    ${btn_submit}

*** Test Cases ***
Entrar no site do faceebok e efetuar cadastro
    abrir navegador e acessar o site
    acessar a página de cadastro
    preencher os dados
    enviar formulário
