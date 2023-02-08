*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

*** Keywords ***

User navigates ActiveProjects Page
    Click Element   xpath:(//a[@routerlinkactive='active-route'])[3]
    Sleep    2s

User clicks Apollo13
    Click Element    xpath://span[@class='p-button-label']
    Sleep    2s
    Go Back
    Sleep    2s

User clicks Alfaboard
    Click Element    xpath:(//span[@class='p-button-label'])[5]
    Sleep    2s
    Go Back
    Sleep    2s

User clicks Betaboard
    Click Element    xpath:(//span[@class='p-button-label'])[9]
    Sleep    2s
    Go Back
    Sleep    2s

User clicks Argos
    Click Element    (//span[@class='p-button-label'])[13]
    Sleep    2s
    Go Back
    Sleep    2s

User clicks chevron
     Click Element    (//span[@class='p-button-icon pi pi-chevron-down'])[1]
     Sleep    2s
     Click Element    xpath://span[@class='p-menuitem-text ng-star-inserted']
     sleep  2s
