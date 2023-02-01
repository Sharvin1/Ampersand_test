*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Boolean component
    Click Element    xpath:(//span[@class='p-button-label ng-star-inserted'])[5]
    Sleep  2s