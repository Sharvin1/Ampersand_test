*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Alphanumeric component
    Click Element    xpath://p-button[@routerlink='/tools/atomic/alphanumeric']
    Sleep  2s
