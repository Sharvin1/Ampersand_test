*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Bigalphanumeric component
    Click Element    xpath://p-button[@routerlink='/tools/atomic/bigalphanumeric']//span[@class='p-button-label ng-star-inserted'][normalize-space()='How to use']
    Sleep  2s