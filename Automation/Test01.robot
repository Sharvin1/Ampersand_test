*** Settings ***
Library    SeleniumLibrary
Library  BuiltIn

*** Test Cases ***
Scenario: Test01
  Given User navigates to homepage

*** Keywords ***
User navigates to homepage
  Open Browser    http://localhost:4200    chrome


