*** Settings ***
Library           Selenium2Library
Resource          ../Keywords/Keywords&Variables.robot

*** Test Cases ***
Genesys Login
    Open Genesys
    ${New Org}    set variable    humana5
    Change Organisation    ${New Org}
    Microsoft Login    ${HumanaEmail}    ${HumanaPassword}
    Close Browser
