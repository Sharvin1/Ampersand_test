*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Alphanumeric component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[2]
    Sleep  2s
