*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Hugealphanumeric component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[4]
    Sleep  2s