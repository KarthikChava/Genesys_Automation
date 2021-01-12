*** Settings ***
Library           Selenium2Library

*** Variables ***
${HumanaEmail}    KChava@humana.com
${HumanaPassword}    sai2#dad

*** Keywords ***
Open Genesys
    Open Browser    https://apps.usw2.pure.cloud/    googlechrome
    Wait Until Page Contains Element    xpath=//div[@class='logo']    10
    Maximize Browser Window
    Capture Page Screenshot

Change Organisation
    [Arguments]    ${New Org}
    sleep    2
    Wait Until Element Is Visible    xpath=//*[@class='advanced-login ember-view']    10
    Click Element    xpath=//*[@class='advanced-login ember-view']
    Wait Until Page Contains Element    xpath=//*[@id='org']    10
    sleep    2
    Input Text    xpath=//*[@id='org']    ${New Org}
    sleep    2
    Click Element    xpath=//*[@type='submit']
    Wait Until Element Is Visible    xpath=//*[@class='org-name']    10
    sleep    2
    ${Org Name}    Get Text    xpath=//*[@class='org-name']

Microsoft Login
    [Arguments]    ${Email}    ${Password}
    Wait Until Element Is Visible    xpath=//*[@alt='Microsoft ADFS']    10
    Click Element    xpath=//*[@alt='Microsoft ADFS']
    Wait Until Element Is Visible    xpath=//*[@class='banner-logo']//following::input[@type='email']    10
    sleep    2
    Input Text    xpath=//*[@class='banner-logo']//following::input[@type='email']    ${Email}
    Sleep    2
    Click Element    xpath=//*[@type='submit']
    Wait Until Element Is Visible    xpath=//input[@name='passwd']    10
    sleep    3
    Input Text    xpath=//input[@name='passwd']    ${Password}
    sleep    2
    Click Element    xpath=//*[@type='submit']
    Wait Until Element Is Visible    xpath=//*[@class='row text-title']    10
    Click Element    xpath=//*[@type='submit']
    Wait Until Element Is Visible    xpath=(//*[@class='entity-image available chat-presence ember-view'])[1]    50
    Capture Page Screenshot
