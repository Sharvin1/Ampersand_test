
*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
User navigates homepage
    Open Browser    http://localhost:4200    chrome
    Maximize Browser Window
