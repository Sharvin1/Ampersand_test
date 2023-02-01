*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks DateTime component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[7]
    Sleep  2s