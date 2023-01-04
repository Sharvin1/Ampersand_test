*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User clicks Hugealphanumeric component
    Click Element    xpath://p-button[@routerlink='/tools/atomic/hugealphanumeric']//span[@class='p-button-label ng-star-inserted'][normalize-space()='How to use']
    Sleep  2s