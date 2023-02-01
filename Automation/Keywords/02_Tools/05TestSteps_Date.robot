*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Date component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[6]
    Sleep  2s