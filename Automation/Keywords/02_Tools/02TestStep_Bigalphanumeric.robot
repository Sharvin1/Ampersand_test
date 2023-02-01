*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Bigalphanumeric component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[3]
    Sleep  2s