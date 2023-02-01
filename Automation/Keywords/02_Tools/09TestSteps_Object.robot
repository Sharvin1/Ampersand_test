*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Object component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[9]
    Sleep  2s