*** Settings ***
Library           Selenium2Library
Resource          ../Keywords/Keywords&Variables.robot

*** Test Cases ***
TC01_Genesys_ Login
    Open Genesys
    ${New Org}    set variable    humana5
    Change Organisation    ${New Org}
    Microsoft Login    ${HumanaEmail}    ${HumanaPassword}
    Close Browser

TC02_Genesys_Status_Change
    Open Genesys
    ${New Org}    set variable    humana5
    Change Organisation    ${New Org}
    Microsoft Login    ${HumanaEmail}    ${HumanaPassword}
    Change Status    ${Meeting}    ${Webinars}
    Re-Change Status     ${Meeting}    ${Training}    ${New Hire}
    Close Browser
