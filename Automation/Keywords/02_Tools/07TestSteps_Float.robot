*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Float component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[8]
    Sleep  2s