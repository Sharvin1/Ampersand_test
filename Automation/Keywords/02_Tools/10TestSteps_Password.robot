*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Password component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[10]
    Sleep  2s