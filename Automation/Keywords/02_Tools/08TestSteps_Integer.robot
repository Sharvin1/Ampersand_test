*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Integer component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[1]
    Sleep  2s